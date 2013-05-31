function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}


PROMPT='%{$fg[yellow]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} ➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

#RPROMPT='%{$fg[yellow]%}$(rvm_prompt_info)%{$reset_color%}%'

rvmi_color=$'%{\e[1;30m%}'

RPROMPT='$rvmi_color$(rbenv_prompt_info)%{$reset_color%}%'


ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

