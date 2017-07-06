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
    zgen oh-my-zsh plugins/git
    #zgen oh-my-zsh plugins/git-extras
    zgen load tj/git-extras etc/git-extras-completion.zsh
    zgen oh-my-zsh plugins/httpie
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/pyenv
    zgen oh-my-zsh plugins/python
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

export GOPATH="$HOME/Code/go"
export PATH="$PATH:$HOME/bin:$HOME/.npm-packages/bin:$GOPATH/bin"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

alias mi=micro
alias st3=subl3

# Tmux aliases
alias mux='tmuxinator'
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

alias reflector-get-mirrors="sudo reflector --verbose -a 4 -p https --sort rate --save /etc/pacman.d/mirrorlist"

source "${HOME}/.zprivate"