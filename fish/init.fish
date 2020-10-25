#!/usr/bin/fish
cd (dirname (status -f))

set --local dir (pwd)

if not test -e $HOME/.config/fish/conf.d
   mkdir $HOME/.config/fish/conf.d
end

# link required files
for file in (ls -A startup-scripts)
    ln -sf "$dir/startup-scripts/$file" "$HOME/.config/fish/conf.d/$file"
end