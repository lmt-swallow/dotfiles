#!/usr/bin/fish

# rust
if not type -q rustup
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
end

if not rustc
    rustup install stable
end

# npm
if not type -q npm
    curl http://npmjs.org/install.sh | sh    
end

if not type -q n
    npm install -g n
end

# wasme
if not type -q wasme
    curl -sL https://run.solo.io/wasme/install | sh
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
