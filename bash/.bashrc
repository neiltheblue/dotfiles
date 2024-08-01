#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# yazi short command
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
alias fzf="fzf --preview=\"bat --color=always {}\"" 

#setup starship
eval "$(starship init bash)"

# set default editor
export EDITOR=nvim

# add local bin to path
export PATH=~/bin:$PATH

# init command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

neofetch

