#!/usr/bin/fish
cd (dirname (status -f))

set --local dir (pwd)

if test -d "$HOME/.emacs.d" 
   /bin/rm -rf "$HOME/.emacs.d"
end

for file in (ls -A | grep -v '*.fish')
    ln -sf --no-target-directory "$dir/$file" "$HOME/$file";
end