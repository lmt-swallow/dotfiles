#!/usr/bin/fish
cd (dirname (status -f))

set --local dir (pwd)
for file in (ls -A | grep -v '*.fish')
    ln -sf "$dir/$file" "$HOME/$file";
end