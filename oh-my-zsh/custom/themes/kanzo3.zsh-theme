# prompt style and colors based on Steve Losh's Prose theme:
# http://github.com/sjl/oh-my-zsh/blob/master/themes/prose.zsh-theme

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo "(`basename $VIRTUAL_ENV`)"
}

#use extended color pallete if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    TURQUOISE="%F{81}"
    ORANGE="%F{166}"
    PURPLE="%F{135}"
    HOTPINK="%F{161}"
    LIMEGREEN="%F{118}"
else
    TURQUOISE="$fg[CYAN]"
    ORANGE="$fg[YELLOW]"
    PURPLE="$fg[MAGENTA]"
    HOTPINK="$fg[RED]"
    LIMEGREEN="$fg[GREEN]"
fi

RST="%{$reset_color%}"

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$HOTPINK%}●"
ZSH_THEME_GIT_PROMPT_ADDED="%{$LIMEGREEN%}●"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$ORANGE%}●"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$PURPLE%}➜"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yelllow]%}✂"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[red]%}↕"

PROMPT='%{$PURPLE%}%n$RST@%{$PURPLE%}%M %{$LIMEGREEN%}%2~$RST$(virtualenv_info) %{$TURQUOISE%}$(git_current_branch)$RST$(git_prompt_status) %{$ORANGE%}λ $RST'
