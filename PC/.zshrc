# Created by newuser for 5.9
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename "home/xil/.zshrc"

autoload -Uz compinit
compinit

PS1="(%F{6}%B%m"$' \Uf07c2 '"%n%b%f)-[%B%~%b]"$'\n'"  └─"$'\uf105'" "


# Utils
alias ls="ls --color --group-directories-first --sort=version"
alias la="ls -A"
alias ll="la -l"
alias cls="clear; fastfetch"
alias current="pwd | wl-copy | kitty | wl-paste& disown"


# Flatpak
alias obs="flatpak run com.obsproject.Studio"
alias Bottles="flatpak run com.usebottles.bottles"


# Yank to the system clipboard
function vi-yank-wl-copy {
    zle vi-yank;
    echo "$CUTBUFFER" | wl-copy;
}

zle -N vi-yank-wl-copy
bindkey -M vicmd 'y' vi-yank-wl-copy


#unzip to dir
function unzipd(){
    if [ -f "$1" ]
    then
        ls | grep "$1"
        mkdir ${1%.zip}
        mv ./"$1" ./"${1%.zip}"
        cd ${1%.zip}
        unzip "$1"
        mv ./"$1" ./..
    else
        echo "No command-line argument given"
    fi
}


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

setopt autocd

bindkey -M viins "jj" vi-cmd-mode
bindkey -M viins "^I" forward-char
