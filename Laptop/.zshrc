# Created by newuser for 5.9
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename "home/xil/.zshrc"

autoload -Uz compinit
compinit

PS1="(%F{15}%B%m"$'\U25C8'"%n%b%f)-[%B%~%b]"$'\n'"  └─"$'\uf105'" "

# Alias
alias ls="ls --color --group-directories-first --sort=version"
alias la="ls -A"
alias ll="ls -l"
alias cls="clear; fastfetch"
alias current="pwd | wl-copy | kitty | wl-paste& disown"

# Yank to the system clipboard
function vi-yank-wl-copy {
zle vi-yank;
echo "$CUTBUFFER" | wl-copy;
}

zle -N vi-yank-wl-copy
bindkey -M vicmd 'y' vi-yank-wl-copy

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

setopt autocd

# Vim keys
bindkey -M viins "jj" vi-cmd-mode
bindkey -M viins "^I" forward-char
