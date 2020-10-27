#!/usr/bin/fish
cd (dirname (status -f))

set --local dir (pwd)

for file in (ls -A | grep -v '*.fish')
    ln -sf --no-target-directory "$dir/$file" "$HOME/$file";
end
