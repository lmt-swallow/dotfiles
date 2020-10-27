#!/usr/bin/fish

if not type -q emacs 
    sudo apt install -y emacs
end

if not type -q git 
    sudo apt install git
end    

if not type -q tmux
    sudo apt install tmux
end    

if not type -q bwrap
    sudo apt install bubblewrap
end

if not type -q peco
    sudo apt install peco
end

if not type -q gh
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
    sudo apt update
    sudo apt install gh
end
