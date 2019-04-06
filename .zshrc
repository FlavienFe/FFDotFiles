clear
# Created by newuser for 5.6.2
autoload -U compinit promptinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=(/usr/local/share/zsh-completions $fpath)
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#theme

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


#home and end keys
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line

#aliases
alias ..='cd ..'
alias ll='ls -lh'
alias la='ls -a'
alias calc='bc -q -l'
alias fall='find / -name $@ 2> /dev/null'
alias ffile='find / -type f -name $@ 2> /dev/null'
alias ffolder='find / -type d -name $@ 2> /dev/null'
pacm(){
	sudo pacman -Sy $1
}

alias hg="history | grep"
alias myip="curl http://ipecho.net/plain; echo"
mcd () {
    mkdir -p $1
    cd $1
}
alias synctopcMP="sudo rclone sync MyDrive:/docs/MP /media/windows/Users/Dafy/Google\ Drive/docs/MP  --config /home/dafy/.config/rclone/rclone.conf --drive-acknowledge-abuse"
alias synctodriveMP="sudo rclone sync /media/windows/Users/Dafy/Google\ Drive/docs/MP MyDrive:/docs/MP  --config /home/dafy/.config/rclone/rclone.conf --drive-acknowledge-abuse"
alias cptopcMP="sudo rclone copy MyDrive:/docs/MP /media/windows/Users/Dafy/Google\ Drive/docs/MP  --config /home/dafy/.config/rclone/rclone.conf --drive-acknowledge-abuse" alias cptodriveMP="sudo rclone copy /media/windows/Users/Dafy/Google\ Drive/docs/MP MyDrive:/docs/MP  --config /home/dafy/.config/rclone/rclone.conf --drive-acknowledge-abuse"
alias loop="pactl load-module module-loopback latency_msec=1"
alias loopstop="pactl unload-module module-loopback"
#binds
bindkey '^ ' autosuggest-execute


# OPAM configuration
. /home/dafy/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

