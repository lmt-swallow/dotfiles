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

unlink "$HOME/.config/fish/fish_variables"
ln -sf "$dir/fish_variables" "$HOME/.config/fish/fish_variables"

if test -d "$HOME/.config/omf" 
   /bin/rm -rf "$HOME/.config/omf"
end
ln -sf --no-target-directory "$dir/omf" "$HOME/.config/omf"
