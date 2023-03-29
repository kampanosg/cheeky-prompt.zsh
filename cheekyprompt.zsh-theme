local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
local git_status=' %{%F{#9b59b6}%c%{$reset_color%} $(git_prompt_info) %F{#58C456}'

PROMPT='🐔'
PROMPT+="${git_status}"
PROMPT+='
'
PROMPT+="${ret_status}"

RPROMPT='hi'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{#89C9D9}\ue727 (%F{#89C9D9}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#89C9D9}) %{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{#89C9D9})"

local test="$(gcloud config get-value project 2>/dev/null)"


PROMPT+='${test}'
