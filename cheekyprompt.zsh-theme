# build_r_prompt() {
#   if [[ $(cat ~/.config/cheeky-prompt/cluster) = "prod" ]]; then
#     echo "%F{#f1c40f}  🌶️  [prod]"
#   elif [ $(cat ~/.config/cheeky-prompt/cluster) = "preprod" ]; then
#     echo "%F{#16a085} ☁️  [preprod]"
#   else
#     echo "%F{#1abc9c} ☁️  [dev]"
#   fi
# }

# local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
# local git_status=" %{%F{#9b59b6}%c%{$reset_color%} $(git_prompt_info)%F{#58C456}"
# PROMPT="🐔${git_status}${ret_status} "

# ZSH_THEME_GIT_PROMPT_PREFIX="%F{#89C9D9}\ue727 (%F{#89C9D9}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
# ZSH_THEME_GIT_PROMPT_DIRTY="%F{#89C9D9}) %{$fg[yellow]%}!"
# ZSH_THEME_GIT_PROMPT_CLEAN="%F{#89C9D9})"

# ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
# ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

# # PROMPT="$(build_l_prompt)"
# # RPROMPT="$(build_r_prompt)"


local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='🐔%{$fg_bold[green]%} %F{#9b59b6}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}
${ret_status} '

ZSH_THEME_GIT_PROMPT_PREFIX="\ue727 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%} ! %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_PROMPT_BASE_COLOR="%F{#3498db}"
ZSH_THEME_REPO_NAME_COLOR="%F{##e74c3c}"

ZSH_THEME_SVN_PROMPT_PREFIX="svn:("
ZSH_THEME_SVN_PROMPT_SUFFIX=")"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN=" "