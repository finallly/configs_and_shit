function virtualenv_prompt_info() {
    [[ -n ${VIRTUAL_ENV}  ]] || return
      echo "${ZSH_THEME_VIRTUALENV_PREFIX=<}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX=>}"
      
}

local user='%F{#af5fff}%n@%F{#765399}%m%{$reset_color%}'
local pwd='%F{#00d7af}%~%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}%F{#00d7af$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

PROMPT="${user} ${pwd} ->  "
RPROMPT="${return_code} ${git_branch} %{$fg[magenta]%}$(virtualenv_prompt_info)"
