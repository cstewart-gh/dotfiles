# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    # load oh-my-zsh
    zgen oh-my-zsh

    # load oh-my-zsh plugins
    zgen oh-my-zsh plugins/archlinux
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/sudo
    #zgen oh-my-zsh plugins/gitfast
    #zgen oh-my-zsh plugins/git-extras
    zgen load tj/git-extras etc/git-extras-completion.zsh
    zgen oh-my-zsh plugins/httpie
    zgen oh-my-zsh plugins/pip
    #zgen oh-my-zsh plugins/pyenv
    zgen oh-my-zsh plugins/pyenv
    zgen oh-my-zsh plugins/rbenv
    zgen oh-my-zsh plugins/bundler
    zgen oh-my-zsh plugins/gem
    zgen load cstewart90/dotfiles oh-my-zsh/custom/plugins/rails
    zgen oh-my-zsh plugins/heroku
    zgen oh-my-zsh plugins/tmuxinator
    zgen oh-my-zsh plugins/sprunge
    zgen oh-my-zsh plugins/web-search

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load cstewart90/dotfiles oh-my-zsh/custom/themes/kanzo2

    # save all to init script
    zgen save
fi

# https://superuser.com/a/610025
unsetopt correct_all
setopt correct

#autoload bashcompinit
##bashcompinit

export GOPATH="$HOME/Code/go"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$HOME/bin:$PYENV_ROOT/bin:$HOME/.npm-packages/bin:$GOPATH/bin"
pyenv init - > out.log 2> err.log
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

alias zgen-reset="rm -rf ~/.zgen/*/ ~/.zgen/init.zsh ~/.zcompdump* ~/.zsh-update"

# Git(Hub) aliases
alias g=git
alias gst="git st"
alias ghist="g hist"
alias glog="tig"
alias tig-status="tig status"
alias tig-log="tig log"
alias "tig-grep='tig grep'"
alias gm="g m"
alias gc="g c"
alias gco="g co"
alias gcl="g cl"
alias gc!="g c --amend"
alias gcm="g c -m"
alias gr="g reset"
alias gist=gist --private
alias kbstatus=keybase status
alias kbprove=keybase prove
alias kb=keybase

#http current ip api info
alias="http-info ifconfig.co/json"

alias mi=micro
alias st3=subl3


# Tmux aliases
alias mux='tmuxinator'
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

source "${HOME}/.zprivate"