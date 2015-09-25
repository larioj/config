#! /bin/bash
# Script must be run from the DotFiles directory.

# Control Flow
showEvents="true"
actionDic=(
"setup:makeLinks"
"cleanup:removeLinks"
)

usage () {
  echo "usage: $0 action"
}

getAction () {
  action="usage"
  for item in ${actionDic[*]}
  do
    if [ "$1" == "$(key $item)" ]; then
      action="$(val $item)"
    fi
  done
  printf "%s" $action
}

sourceD=$(pwd)
destD=$HOME
sourceFiles=(
# "setup.sh:.setup.sh"
"bash_aliases:.bash_aliases"
"bash_profile:.bash_profile"
"emacs:.emacs"
"gitconfig:.gitconfig"
"haskeline:.haskeline"
"vimrc:.vimrc"
)

val () {
  printf "%s" ${1##*:}
}

key () {
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
    showOrRun "ln -s $sourceD/$(key $item) $destD/$(val $item)"
  done
}

removeLinks () {
  for item in ${sourceFiles[*]}
  do
    showOrRun "rm $destD/$(val $item)"
  done
}

main () {
  action="$(getAction $1)"
  $action $@
}

main $@
