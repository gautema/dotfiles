# adds the current branch name in green
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}

# makes color constants available
# autoload -U colors
# colors

# enable colored output from ls, etc
# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced

# expand functions in the prompt
# setopt prompt_subst

# prompt
# export PS1='$(git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '
# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme