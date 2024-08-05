#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#start ssh-agent (the systemd user servivce does not seem to work)
eval "$(ssh-agent -s)" >/dev/null
ssh-add ~/.ssh/id_ed25519 >/dev/null 2>&1
ssh-add ~/.ssh/default >/dev/null 2>&1

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

# set neovim editor
export EDITOR=nvim
export NVIM_APPNAME=nvim-default

# add local bin to path
export PATH=~/bin:$PATH

# init command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# source rust support
. "$HOME/.cargo/env"

# perl config
PATH="/home/neil/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/neil/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/neil/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/neil/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/neil/perl5"; export PERL_MM_OPT;

#setup starship
eval "$(starship init bash)"

# run vi edit mode
set -o vi

# start neofetch on login
neofetch


.

