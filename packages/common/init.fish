#!/usr/bin/fish

# rust
if not type -q rustc
    curl https://sh.rustup.rs -sSf | sh
end

# npm
if not type -q npm
    curl http://npmjs.org/install.sh | sh
end    

# omf
if not type -q omf
    curl -L https://get.oh-my.fish | fish
end    

# pyenv
if not type -q pyenv 
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv 
end    

# opam
if not type -q opam
    curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh > /tmp/opam.sh
    echo '/usr/local/bin' | sh /tmp/opam.sh
    opam init
end

# goenv
if not type -q goenv    
    git clone https://github.com/syndbg/goenv.git ~/.goenv    
end
eval (goenv init - | source)

# go
if not type -q go
    goenv install 1.14.0
    goenv global 1.14.0
end