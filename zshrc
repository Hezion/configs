function dpass() {
    openssl rand -base64 1024
}

function dpassc() {
    openssl rand -base64 60 | pbcopy
}

function dweb() {
    http-server $1 -p `jot -r 1 8100 9000`
}

alias htop="sudo /usr/local/bin/htop"
alias tar="gtar"
alias reloadZSH=". ~/.zshrc"
alias fuckDS="find . -name .DS_Store -exec rm -rf {} \;"
alias fuckSVN="find . -depth -name .svn -exec rm -fr {} \;"
alias gitwho="git config --get user.name; git config --get user.email"
alias dgit="git config user.name 'David'; git config user.email 'xxxxxx@gmail.com'"
alias wgit="git config --unset user.email; git config --unset user.name"
alias dip="lsof -iTCP -sTCP:LISTEN"

export PATH=/Users/david/bin:$PATH
export LC_ALL=en_US.UTF-8
bindkey -e

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit -i

#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
