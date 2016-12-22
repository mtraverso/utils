#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

#RPROMPT='$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

function build_prompt() {
  local LAST_EXIT_CODE=$?
  local EXIT_CODE_PROMPT="%{$fg[green]%}%t%{$reset_color%} [%{$fg_bold[magenta]%} %n %{$reset_color%}] "
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    EXIT_CODE_PROMPT+="%{$fg_bold[red]%}➜"
  else
    EXIT_CODE_PROMPT+="%{$fg_bold[green]%}➜"
  fi
  EXIT_CODE_PROMPT+=" %{$fg[blue]%}%c%{$fg_bold[cyan]%} # %{$reset_color%}"
  echo "$EXIT_CODE_PROMPT"
}
PROMPT='$(build_prompt)'
RPROMPT='%{$reset_color%}$(git_super_status)%{$fg_bold[blue]%}$(git_prompt_status)% %{$reset_color%}'
