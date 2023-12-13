# Created by newuser for 5.9

PS1=$'[%{\e[0;33m%}%n%{\e[0m%}|%{\e[0;32m%}%M%{\e[0m%}|%B%d%b]'
RPROMPT="(%D{%d.%m.%y} | %*)"



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# XDG_CURRENT_DESKTOP="Hyprland"

. "$HOME/.cargo/env"

# Proud exports
# export EDITOR=hx # Not needed for nb

# makes existing commands better
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# alias hx="hx --config /home/juan/.config/helix/config.toml" # not user this works

PS1='[\u@\h \W]\$ '
# alias hx=helix
alias cls=clear
alias ..="cd .."

# Takes you somewhere
alias pro="cd ~/projects"
alias dk="cd ~/Documents"
# alias gcc="gcc -fuse-ld=mold"

# conf alias
alias wayconf="hx ~/.config/waybar/"
alias hyprconf="hx ~/.config/hypr/hyprland.conf"
alias bashconf="hx ~/.bashrc && source ~/.bashrc"

# Misc
alias csl="ssh juan@192.168.50.3"
alias csp="ssh juan@caplain.asuscomm.com"
alias sp="sudo pacman"

alias cr="cargo run"
alias cb="cargo build"
alias ca="cargo add"

# shorthand word
alias p=pacman
alias d=docker
alias g=git
alias n=nb
alias h=hyprctl
alias q=exit
alias sctl=systemctl
alias ts=timeshift


# zoxide is useful sometimes
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

cwd() {
  pwd | wl-copy
}

