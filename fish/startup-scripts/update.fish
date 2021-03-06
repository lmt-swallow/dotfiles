echo '[*] checking for updates ...'

set --local base (pwd)

cd ~/.dotfiles
git fetch origin
if git diff --exit-code master origin/master >/dev/null
    echo '[*] no update found.'    
else
    echo '[*] update found. pulling ...'
    git pull    
    echo '[*] done.'
    
    echo '[*] you should run the following command to apply this updation.'
    echo '$ cd ~/.dotfiles; fish init.fish'
end

cd $base
