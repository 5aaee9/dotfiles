git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout (git describe --abbrev=0 --tags)
mkdir -p ~/.config/fish
cp .config.fish ~/.config/fish/config.fish

pushd ~/.config/fish
git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper
popd

nvm install 10