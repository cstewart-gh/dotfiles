# load zgen
source "${HOME}/.zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    # load oh-my-zsh
    zgen oh-my-zsh

    # load oh-my-zsh plugins
    zgen oh-my-zsh plugins/ubuntu
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/sprunge
    zgen save

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load cstewart90/dotfiles oh-my-zsh/custom/themes/kanzo2

    # save all to init script
    zgen save
fi

export EDITOR=ne
