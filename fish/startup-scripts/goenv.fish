# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
if type -q goenv
    eval (goenv init - | source)
else
    echo "[*] goenv is not installed."
end

# go
if type -q go 
    echo "[*] go is not installed."
end
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
