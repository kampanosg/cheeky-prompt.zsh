
build_r_prompt() {
  if [[ $(cat ~/.config/cheeky-prompt/cluster) = "prod" ]]; then
    echo "%F{#f1c40f}  🌶️  [prod]"
  elif [ $(cat ~/.config/cheeky-prompt/cluster) = "preprod" ]; then
    echo "%F{#16a085} ☁️  [preprod]"
  else
    echo "%F{#1abc9c} ☁️  [dev]"
  fi
}

build_l_prompt() {
  local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
  local git_status=' %{%F{#9b59b6}%c%{$reset_color%} $(git_prompt_info) %F{#58C456}'

  prompt='🐔'
  prompt+="${git_status}"
  prompt+='
'
  prompt+="${ret_status}"

  echo $prompt
}


ZSH_THEME_GIT_PROMPT_PREFIX="%F{#89C9D9}\ue727 (%F{#89C9D9}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#89C9D9}) %{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{#89C9D9})"

PROMPT="$(build_l_prompt)"
RPROMPT="$(build_r_prompt)"
