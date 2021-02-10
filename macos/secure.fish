#!/usr/local/bin/fish

echo (which fish)" ~/.umount.fish wake" > ~/.wakeup
echo (which fish)" ~/.umount.fish sleep" > ~/.sleep

chmod 777 ~/.wakeup
chmod 777 ~/.sleep

echo "set SECURE_DIR /Volumes/Secure/

if test -d \$SECURE_DIR
  diskutil umount \$SECURE_DIR
  echo \"Auto umount SECURE dir \$argv[1]\" > ~/.umount.log
end" > ~/.umount.fish
