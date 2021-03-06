setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
setopt CORRECT
autoload -U compinit
compinit
__git_files () {
    _wanted files expl 'local files' _files 
}
setopt completealiases
autoload colors zsh/terminfo
autoload -U colors && colors
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "

if [[ "$terminfo[colors]" -ge 8 ]]; then
colors
fi
HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey -e
bindkey '^R' history-incremental-search-backward

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

HOSTNAME="`hostname`"


autoload -Uz vcs_info

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*+set-message:*' hooks git-st git-stash
zstyle ':vcs_info:*' formats " %{$fg[cyan]%}[%s:%b%{$fg[red]%}%m%c%u%{$reset_color%}%{$fg[cyan]%}]%{$reset_color%}"
zstyle ':vcs_info:*' stagedstr '!'
zstyle ':vcs_info:*' unstagedstr '?'   
precmd () {
 
    vcs_info
}
 
setopt prompt_subst

alias ls="ls --color=auto"

#bindkey \\C-R history-incremental-search-backward
#bindkey "^A" beginning-of-line # Home
#bindkey "^E" end-of-line # End
#bindkey "\e[5~" beginning-of-history # PageUp
#bindkey "\e[6~" end-of-history # PageDown
#bindkey "^[[1;5C" forward-word
#bindkey "^[[1;5D" backward-word
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/georgi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH=$HOME/Programs/bin:/home/georgi/Programs/nodejs/bin:$PATH:/opt/puppetlabs/bin
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="blue"; fi

PROMPT='%{$terminfo[bold]$fg[$NCOLOR]%}%c%{$reset_color%}${vcs_info_msg_0_}%{$terminfo[bold]$fg[$NCOLOR]%}➤ %{$reset_color%}'
