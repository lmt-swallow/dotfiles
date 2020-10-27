if type -q gh 
    gh completion -s fish | source
else
    echo "[*] gh is not installed."
end
