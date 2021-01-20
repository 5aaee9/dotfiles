
# Before use, use
# gpg --import Indexyz.gpg
# To import private keys

# Install GPG softwares
brew install gnupg pinentry-mac gpg-suite

# Update config
echo "no-tty
use-agent" > ~/.gnupg/gpg.conf

# Set git use gpg key
git config --global gpg.program (which gpg)

git config --global commit.gpgsign true
git config --global user.signingkey 16B8421AAEC1A147
