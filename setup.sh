#! /bin/bash
# Script must be run from the DotFiles directory.

# Output options
showEvents="false"

sourceD=$(pwd)
destD=$HOME
sourceFiles=(
"bash_aliases:.bash_aliases"
"bash_profile:.bash_profile"
"cleanup.sh:.cleanup.sh"
"emacs:.emacs"
"gitconfig:.gitconfig"
"haskeline:.haskeline"
"setup.sh:.setup.sh"
"vimrc:.vimrc"
)

snd () {
  printf "%s" ${1##*:}
}

fst () {
  printf "%s" ${1%%:*}
}

showOrRun () {
  if [ "true" == $showEvents ]
  then echo $1
  else $1
  fi
}

makeLinks () {
  for item in ${sourceFiles[*]}
  do
    showOrRun "ln -s $sourceD/$(fst $item) $destD/$(snd $item)"
  done
}

removeLinks () {
  for item in ${sourceFiles[*]}
  do
    showOrRun "rm $destD/$(snd $item)"
  done
}

removeLinks
