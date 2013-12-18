# this theme depends on git plugin.
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}o"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}?"

function my_git_status() {
    [ $(current_branch) ] && echo "($(current_branch)$(git_prompt_status)%{$reset_color%})"
}

DATE_TIME="%{$fg[yellow]%}%D{%Y-%m-%d %K:%M}%{$reset_color%}"
PROMPT_PREFIX="%{$fg[white]%}#%{$reset_color%}"
SEPARATOR1="%{$fg[white]%}|%{$reset_color%}"
USER_NAME="%{$fg[blue]%}%n%{$reset_color%}"
SEPARATOR2="%{$fg[white]%}@%{$reset_color%}"
HOST_NAME="%{$fg[cyan]%}%m%{$reset_color%}"
SEPARATOR3="%{$fg[white]%}:%{$reset_color%}"
CURRENT_DIRECTORY="%{$fg[green]%}%~%{$reset_color%}"
PROMPT_CHAR="%{$fg[white]%}$ %{$reset_color%}"
PROMPT='${PROMPT_PREFIX}${DATE_TIME}${SEPARATOR1}${USER_NAME}${SEPARATOR2}${HOST_NAME}${SEPARATOR3}${CURRENT_DIRECTORY} $(my_git_status)
$PROMPT_CHAR'
PROMPT2="%{$fg[white]%}> %{$reset_color%}"
