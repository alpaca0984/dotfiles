#!/bin/bash

DOTFILES="$HOME/dotfiles"

cd $HOME

# ----- Create backup directory. -----

echo "-- backup --"
DATE=`date +%Y%m%d_%H%M%S`
BACKUP_DIR=$HOME/backup_home/$DATE/
mkdir -p $BACKUP_DIR
echo "Created a directory: $BACKUP_DIR"
echo;


# ----- Create backup if you want. -----

for file in * .??*
do
 case $file in
 # These files will be excluded for being taken copies.
 "."|".."|"dotfiles"|"backup_home")
   echo "This file isn't supposed to be taken a copy: $file"
   continue
   ;;
 esac
 # Do backup.
 cp -pr $HOME/$file $BACKUP_DIR
 echo "Copied a file: $file"
done
echo;


# ----- standard dotfiles -----

ary=(".gitconfig" ".tmux.conf" ".vimrc" ".gemrc")
for file in "${ary[@]}"
do
  echo "-- $file --"
  if [ -e $HOME/$file ]; then
    cp -pr $HOME/$file $BACKUP_DIR # backup
    rm -f $HOME/$file
    echo "Deleted a file: $HOME/$file"
  fi
  ln -s $DOTFILES/$file $file
  echo "Created symbolic-link $HOME/$file"
  echo;
done


# ----- fish shell -----

mkdir -p $HOME/.config/fish
ary=("config.fish" "fishfile")
for file in "${ary[@]}"
do
  ln -s $DOTFILES/fish/$file $HOME/.config/fish/$file
done


# ----- Local settings of .gitconfig -----

echo "-- gitconfig --"
GIT_CONFIG_LOCAL_TEMPLATE=$HOME/dotfiles/gitconfig/.gitconfig.local.template
GIT_CONFIG_LOCAL=$HOME/.gitconfig.local
if [ ! -f $GIT_CONFIG_LOCAL ]; then
  cp -p $GIT_CONFIG_LOCAL_TEMPLATE $GIT_CONFIG_LOCAL
  echo "Created a file: $GIT_CONFIG_LOCAL"
fi
echo;


echo "#######################"
echo "#### manual config ####"
echo "#######################"
echo;

cat $DOTFILES/README.md
echo;
