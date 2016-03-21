# My personal Aliases
shopt -s expand_aliases

alias i="sudo apt-get install"
alias ls='clear; ls --color=auto --group-directories-first'

# Nice little prompt
PS1="$ "

# General behaviour aliases
c() {
	if [ -z "$1" ]; then
		popd
	else 
		pushd $@
	fi
	ls
}

attu () {
	ssh "larioj@attu${1}.cs.washington.edu"
}

alias s="history | grep"

# Git Aliases
alias gc="git commit -am"
alias gs="git status"

# Set vim mode
set -o vi

# Find name
alias findn="find . -name"

# I always forget how to tar
alias untar="tar -vxzf"
alias maketar="tar -cvzf"

# Memory usage
alias mem="du -hsc"

# make executable
mx () {
	touch $@
	chmod u+x $@
}

# Make file/directory
alias md="mkdir"
ms () {
	mkdir $1 && cd $1
}
alias mf="touch"

# Git auto complete
if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi

# Editor
alias e="nvim"

fp() {
	grep -rnw "$1" -e "$2"
}

alias h="fg"
