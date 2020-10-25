#!/usr/bin/fish
cd (dirname (status -f))

for file in (find . -mindepth 2 -maxdepth 2 -name "clean.fish")    
    echo '[*] $file'
    source $file
end