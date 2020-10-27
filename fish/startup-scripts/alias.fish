alias e='emacsclient -nw'
alias l='ls'
alias ks='ls'
alias la='ls -al'
alias c='cat'
alias g='grep'
alias gs='git status'
alias ga='git add --all'
alias gc='git commit -m'
alias gf='git commit --amend -m'
alias gp='git push -u origin HEAD'
alias far='find . -type f | xargs grep'

alias chrome-disable-xss-auditor='open -na Google\ Chrome --args --disable-xss-auditor'

switch (uname)
    case Linux
        alias pbcopy='xsel --clipboard --input'
    case Darwin        
    case '*'
end