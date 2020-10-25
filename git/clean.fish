#!/usr/bin/fish
cd (dirname (status -f))

set --local dir (pwd)
for file in (ls -A | grep -v '*.fish')
    if test -e "$dir/$file"
        unlink "$HOME/$file"
    end    
end