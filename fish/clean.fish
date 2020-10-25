#!/usr/bin/fish
cd (dirname (status -f))

for file in (ls -A startup-scripts)
    if test -e "$HOME/.config/fish/conf.d/$file"
        unlink "$HOME/.config/fish/conf.d/$file"
    end    
end