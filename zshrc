function dpass() {
    openssl rand -base64 1024
}

function dpassc() {
    openssl rand -base64 60 | pbcopy
}

function dweb() {
    http-server $1 -p `jot -r 1 8100 9000`
}

function initNVM() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
}

alias htop="sudo /usr/local/bin/htop"
alias tar="gtar"
alias reloadZSH=". ~/.zshrc"
alias fuckDS="find . -name .DS_Store -exec rm -rf {} \;"
alias fuckSVN="find . -depth -name .svn -exec rm -fr {} \;"
alias gitwho="git config --get user.name; git config --get user.email"
alias dgit="git config user.name 'David'; git config user.email 'xxxx@gmail.com'"
alias wgit="git config --unset user.email; git config --unset user.name"
alias dip="lsof -iTCP -sTCP:LISTEN"

export PATH=/Users/david/bin:$PATH
export LC_ALL=en_US.UTF-8
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
export CLICOLOR=1

HISTFILE=~/.zhistory
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt AUTO_CD
setopt INC_APPEND_HISTORY
setopt APPEND_HISTORY
setopt NO_CASE_GLOB
bindkey -e

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=(/usr/local/share/zsh-completions $fpath)
fpath+=$HOME/.zsh/pure
autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
prompt pure
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

