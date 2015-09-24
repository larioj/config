# My personal Aliases
shopt -s expand_aliases

# Nice little Promt in cmd.
PS1="LarioJ: "
chrome () {
  /usr/bin/open -a "/Applications/Google Chrome.app" "$1"
}
alias web="w3m"

# General behaviour aliases
alias ls='clear; gls --color=auto --group-directories-first'
# alias ls='clear; ls -G'
# alias ll="ls -alF"
# alias l="ls -CF"
alias cd='_(){ cd $1; ls; }; _'
alias h="cd .."
alias c='clear'
alias s="history | grep"
alias la="ls -a"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Compiler settings
alias qcc="gcc -Wall -std=c11 -g -o"
alias qc="gcc -Wall -std=c11"
alias jclean="rm *.class"

# Cse specific aliases
attu () {
  ssh "larioj@attu${1}.cs.washington.edu"
}
alias cse="cd $LOCALHOME/courses/CSE/"
alias qpp="g++ -Wall -g -std=gnu++11 -o"
alias qp="g++ -Wall -std=gnu++11 -o"

# Git Aliases
alias u='git push -u origin master'
alias gc="git commit -am"
alias gs="git status"

# Set vim mode
set -o vi

# VLC
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# Find name
alias findn="find . -name"

# wget: cause webster has no security
alias wget="wget --no-check-certificate"

# More powerful vim open
vi () {
  vim $(findn ${1})
}

# I always forget how to tar
alias untar="tar -vxzf"
alias maketar="tar -cvzf"

# Arm Tool Chain
# export PATH="$PATH:$HOME/Dropbox/courses/CSE/indep/pi/yagarto-4.7.2/bin"
# export PATH="$PATH:$HOME/Dropbox/courses/CSE/indep/pi/yagarto-4.7.2/tools"

# Memory usage
alias mem="du -hsc"

# Config Shortcuts
alias vimc="vim ~/.vimrc"
vimft () {
	vim ~/.vim/ftplugin/${1}_mine.vim
}
vimfta () {
	vim ~/.vim/after/ftplugin/${1}_mine.vim
}
alias vimu="vim +PluginInstall +qall"
alias bashc="vim ~/.bash_aliases"
alias bashu="source ~/.bashrc"

# Go back multiple times
b () {
	for i in `seq 1 $1`;
	do
		cd ..
	done
}

# make executable
mx () {
	touch $@
	chmod u+x $@
}
# alias mx="chmod u+x"

# Make file/directory
alias md="mkdir"
mds () {
	mkdir $1 && cd $1
}
alias mf="touch"
alias mfr="touch readme.md"

# Install
alias in="sudo apt-get install"

# Cut and paste for files
ct () {
	mv $@ ~/.ct
	ls
}

pt () {
	mv ~/.ct/* .
	ls
}

# aws shortcuts
a () {
	if [ "ls" == $1 ]; then
		aws s3 ls $2
	fi
}

# push pop
push() {
	pushd $@
	ls
}

pop() {
	popd $@
	ls
}

# Paths
# export PATH="$PATH:/Users/jesus/languages/assembler/baremetal/libs/yagarto-4.7.2/bin"
# export PATH="$PATH:/Users/jesus/languages/assembler/baremetal/libs/yagarto-4.7.2/tools"
export PATH="$PATH:/Applications/Racket v6.2/bin/"
export PATH="$PATH:$HOME/.cabal/bin"
export PATH="$PATH:$HOME/.local/bin"

# Aws Complete
complete -C '/usr/local/bin/aws_completer' aws

# Set default editor
export VISUAL=/usr/bin/vim
export EDITOR="$VISUAL"

# Git auto complete
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

# Send a text message
sendtext () {
	local number message
	number=$1; message=$2
	if [[ -z $2 ]]; then
		message=$number
		number=2062711216
	fi
	curl http://textbelt.com/text -d number=$number -d "message=$message"
}

# Create file and invoke editor
se() {
	bide $@
	vim $@
}

# Export haskell libraries
export PATH="$HOME/Library/Haskell/bin:$PATH"

# Editor
alias e="vim"
