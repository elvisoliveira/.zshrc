# Sysvar
export ZSH=~/.oh-my-zsh

# DRY
ZSH_THEME="agnoster"

# 10ms for key sequences.
KEYTIMEOUT=1

# DRY
plugins=(git npm node brew osx docker vi-mode)

# Default behavior:
source $ZSH/oh-my-zsh.sh

# Don't forget to create the symbolic link inside ~/.vim
# ln -s /path/to/site-packages ~/.vim/
source ~/.vim/site-packages/powerline/bindings/zsh/powerline.zsh

# My custom functions:
function fs() {
	local name="$1"
	find ./ -type f \
		-not -path '*/\.*' \
		-not -path "*/node_modules/*" \
		-exec grep -H $name {} \;
}

function ff() {
	local name="$1"
	find ./ -iname $name
}
