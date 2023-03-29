autoload -U add-zsh-hook || return
add-zsh-hook precmd update_cluster

function update_cluster() {
    CLUSTER=$(cat ~/.config/cheeky-prompt/cluster 2>/dev/null)
}

function rprompt() {
  if [[ $(cat ~/.config/cheeky-prompt/cluster 2>/dev/null) = "prod" ]]; then
    echo "%F{#f1c40f} 🌶️  [${CLUSTER}]"
  elif [ $(cat ~/.config/cheeky-prompt/cluster 2>/dev/null) = "preprod" ]; then
    echo "%F{#9b59b6} ☁️  [${CLUSTER}]"
  else
    echo "%F{#1abc9c} ☁️  [${CLUSTER}]"
  fi
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='🐔%{$fg_bold[green]%} %F{#e67e22}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}
${ret_status} '
RPROMPT='$(rprompt)'

ZSH_THEME_GIT_PROMPT_PREFIX="\ue727 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%} ! %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

ZSH_PROMPT_BASE_COLOR="%F{#3498db}"
ZSH_THEME_REPO_NAME_COLOR="%F{##e74c3c}"
