#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Because starship deserves love
eval "$(starship init bash)"
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


# zoxide is useful sometimes
eval "$(zoxide init bash)"

bashkeys() {
  firefox https://gist.github.com/tuxfight3r/60051ac67c5f0445efee
}

cwd() {
  pwd | wl-copy
}
