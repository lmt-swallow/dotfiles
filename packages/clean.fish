#!/usr/bin/fish
set --local basedir (dirname (realpath (status -f)))
cd $basedir

# run env-dependent scripts
switch (uname)
    case Linux
        source linux/clean.fish
    case Darwin
        source macos/clean.fish
    case '*'
end

# run env-independent scripts
cd $basedir
source common/init.fish