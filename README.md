# dotfiles

This repository manages dotfiles for [@lmt-swallow](https://github.com/lmt-swallow).

## How to setup

```sh
# in your shell...

# install requiremenets.
# NOTE: you should replace these commands according to your environments
sudo apt install fish git
chsh -c $(which fish)

# download this dotfiles and run the init scripts
git clone https://github.com/lmt-swallow/dotfiles ~/.dotfiles
fish ./init.fish

# done!
```