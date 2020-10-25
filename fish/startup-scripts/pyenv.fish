export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if type -q "pyenv"
    eval (pyenv init - | source)
else 
    echo "[*] pyenv is not installed."
end
