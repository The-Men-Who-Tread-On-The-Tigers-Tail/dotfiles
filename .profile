# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes the gopls (for go language support in vim)
if [ -d "$HOME/go/bin" ]; then
	PATH="$HOME/go/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/share/gem/ruby/3.0.0/bin" ]; then
	PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
fi

#export TERM=xterm-256color

export JAVA_HOME="/usr/lib/jvm/default"
export PATH="$PATH:$JAVA_HOME/bin"
export EDITOR="nvim"

#set keyboard layout
setxkbmap eu

# set background images
#feh --randomize --bg-fill ~/Pictures/wallies/

# fzf configuration
#export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden --follow --exclude ".git" --exclude "node_modules --exclude ".var" --exclude ".cache"'
#export FZF_DEFAULT_COMMAND='locate "`pwd -P`"'
export FZF_DEFAULT_COMMAND='local_locate.sh'
export FZF_DEFAULT_OPTS='--no-height'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden --follow --exclude ".git" --exclude "node_modules" --exclude ".var" --exclude ".cache" --exclude ".mozilla" --exclude ".wine" --exclude ".vscode" --exclude ".vscode-insiders" --exclude "Trash" --exclude ".gradle" --exclude "gp4" --exclude "vivaldi" --exclude "cups" --exclude ".metadata" --exclude "man" --exclude "go" --exclude ".steam" --exclude "Steam" --exclude "snap" --exclude ".m2" '
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

export FZF_COMPLETION_OPTS="$FZF_DEFAULT_OPTS"

_fzf_compgen_path() {
	#fd --type f --color=never --hidden --exclude ".git" . "$1"
	locate "$(pwd -P)"
}

_fzf_compgen_dir() {
	fd --type d . --color=never --hidden --follow --exclude ".git" --exclude "node_modules" --exclude ".var" --exclude ".cache" --exclude ".mozilla" --exclude ".wine" --exclude ".vscode" --exclude ".vscode-insiders" --exclude "Trash" --exclude ".gradle" --exclude "gp4" --exclude "vivaldi" --exclude "cups" --exclude ".metadata" --exclude "man" --exclude "go" --exclude ".steam" --exclude "Steam" --exclude "snap" --exclude ".m2" . "$1"
}

_fzf_comprun() {
	local command=$1
	shift

	case "$command" in
	cd) fzf "$@" --preview 'tree -C {} | head -50' ;;
	vi) fzf "$@" --preview 'bat --color=always --line-range :50 {}' ;;
	*) fzf "$@" ;;
	esac
}

. "$HOME/.cargo/env"
