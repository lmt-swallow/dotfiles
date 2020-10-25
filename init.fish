#!/usr/bin/fish
set --local basedir (dirname (realpath (status -f)))
cd $basedir

# run all init scripts
set --local files (find . -mindepth 2 -maxdepth 2 -name "init.fish")
for file in $files
    cd $basedir
    echo "[*] $file"    
    source "$file"
end