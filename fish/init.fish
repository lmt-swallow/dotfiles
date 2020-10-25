#!/usr/bin/fish
cd (dirname (status -f))

set --local dir (pwd)

# link required files
for file in (ls -A startup-scripts)
    ln -sf "$dir/startup-scripts/$file" "$HOME/.config/fish/conf.d/$file"
end