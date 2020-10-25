#!/usr/bin/fish
cd (dirname (status -f))

# link settings
for file in (ls -A | grep -v '*.fish')
    ln -sf "$dir/$file" "$HOME/$file";
end

# setting up xcode
xcode-select --install
sudo xcodebuild -license

# install brew 
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# export
export HOMEBREW_BREWFILE=~/.brewfile
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications"

# for cask sync
brew tap rcmdnk/file
brew install brew-file
brew file install