
# Before use, use
# gpg --import Indexyz.gpg
# To import private keys

# Install GPG softwares

echo "default-cache-ttl 600
max-cache-ttl 7200
pinentry-program /usr/local/bin/pinentry-mac
enable-ssh-support" > ~/.gnupg/gpg-agent.conf

if test ! -d ~/.config/fish/conf.d/
    mkdir -p  ~/.config/fish/conf.d/
end

echo "# Start or re-use a gpg-agent.
gpgconf --launch gpg-agent

# Ensure that GPG Agent is used as the SSH agent
set -xg SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh" > ~/.config/fish/conf.d/gpg-card.fish

# Set git use gpg key
git config --global gpg.program (which gpg)

git config --global commit.gpgsign true
git config --global user.signingkey 4117DF9749BA3D89B6744E8CE30E241D9DE4229F
