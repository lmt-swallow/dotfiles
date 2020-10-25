if type -q "gmv"
    alias rm='gmv -f --backup=numbered --target-directory ~/.Trash/'
else
    alias rm='mv -f --backup=numbered --target-directory ~/.Trash/'    
end

if not test -e ~/.Trash
    mkdir ~/.Trash/
end
