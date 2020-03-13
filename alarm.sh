#!/bin/sh

# Arch Linux ARM setup

cat > /etc/pacman.d/mirrorlist <<EOF
Server = https://mirrors.ustc.edu.cn/archlinuxarm/\$arch/\$repo
EOF

# set locale
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen

# Init archlinux arm keys
pacman-key --init
pacman-key --populate archlinuxarm

# Upgrade packages
yes | pacman -Syu

# Install devel
pacman -S base-devel --needed << EOF

y
EOF

# Set timezone
timedatectl set-timezone Asia/Shanghai

# Install packages
yes | pacman -S \
  fish \
  unzip \
  tmux \
  python3 \
  python-pip \
  git \
  fakeroot \
  nodejs \
  npm \
  yarn \
  clash \
  cronie \
  sudo \
  go

systemctl enable --now cronie

# Random alarm passwd
ALARM_PASSWORD=$(date +%s | sha256sum | base64 | head -c 32)
echo -e "$ALARM_PASSWORD\n$ALARM_PASSWORD" | passwd alarm

echo "Alarm password was changed to $ALARM_PASSWORD"

# Init sudoers
cat > /etc/sudoers <<EOF
root ALL=(ALL) ALL
#includedir /etc/sudoers.d
EOF

echo "alarm ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/alarm


cat > /lib/systemd/system/clash.service <<EOF
[Unit]
Description=A rule-based tunnel in Go.
After=network.target

[Service]
ExecStart=/usr/bin/clash
WorkingDirectory=/root/
Restart=on-abort

[Install]
WantedBy=multi-user.target

EOF
systemctl enable clash
systemctl start clash

chsh -s /usr/bin/fish
chsh -s /usr/bin/fish alarm

su - alarm <<EOF
git clone https://aur.archlinux.org/yay.git
cd yay
yes | makepkg --syncdeps
EOF

# Setup wifi network

systemctl enable --now systemd-networkd
systemctl enable --now systemd-resolved
systemctl enable --now wpa_supplicant@wlan0

cat > /etc/systemd/network/wlan0.network <<EOF
[Match]
Name=wlan0

[Network]
DHCP=yes
RouteMetric=20
IPv6PrivacyExtensions=true
EOF

cat > /etc/wpa_supplicant/wpa_supplicant-wlan0.conf <<EOF
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=wheel
update_config=1
eapol_version=1
ap_scan=1
fast_reauth=1
EOF
