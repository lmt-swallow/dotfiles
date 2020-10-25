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