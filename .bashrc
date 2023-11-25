unalias -a
alias cat='cat -s -n'
alias rbt='sudo reboot'
alias sht='sudo shutdown now'
alias echo='echo -e -n'
alias less='less -R -F'
alias ls='ls -G -N -h --color=always'
alias grep='grep --color=always'
alias pacman='sudo pacman --color=always'
alias pi='pacman -S --needed --noconfirm'
alias pr='pacman -Rns --noconfirm'

function lsless {
	ls "$@" | less
}

function catless {
	cat "$@" | less
}

function grepless {
	grep "$@" | less
}

function vimclear {
	sudo -E vim "$@"
	clear
}

function clearman {
	clear
	man "$@"
}

alias ls='lsless'
alias cat='catless'
alias grep='grepless'
alias ..='cd ..'
alias v='vimclear'
alias man='clearman'

alias vv='v ~/.vimrc'
alias vb='v ~/.bashrc && . ~/.bashrc'

PS1='\n\w\n\[\033[91m\]\!\[\033[0m\]    '
PS0='\n'

sudo chown alex /sys/class/graphics/fbcon/cursor_blink
echo 0 > /sys/class/graphics/fbcon/cursor_blink

clear
ls
