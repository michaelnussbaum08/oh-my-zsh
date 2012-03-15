function collapse_pwd {
    SHOW_PATH=$(pwd | sed -e "s,^$HOME,~,");
    if [ ${#SHOW_PATH} -gt 30 ]; then
        SHOW_PATH=${SHOW_PATH:0:12}...${SHOW_PATH:${#SHOW_PATH}-15}
    fi
    echo $SHOW_PATH
}

PROMPT='%{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
