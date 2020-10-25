if type -q "opam"     
    source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
else
    echo "[*] opam is not installed."
end
