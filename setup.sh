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

# for file in * .??*
# do
#  case $file in
#  # These files will be excluded for being taken copies.
#  "."|".."|"dotfiles"|"backup_home")
#    echo "This file isn't supposed to be taken a copy: $file"
#    continue
#    ;;
#  esac
#  # Do backup.
#  cp -pr $HOME/$file $BACKUP_DIR
#  echo "Copied a file: $file"
# done
# echo;

# ----- standard dotfiles -----

ary=(".zshrc" ".gitconfig" ".tmux.conf" ".vimrc" ".gemrc")
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

ln -s $DOTFILES/fish/config.fish $HOME/.config/fish/config.fish


# ----- Vim config -----

echo "-- vim --"
# For Neobundle
PLUGIN_DIR=$HOME/.vim/bundle
if [ ! -d $PLUGIN_DIR ]; then
  mkdir -p $PLUGIN_DIR
  echo "Created a directory: $PLUGIN_DIR"
fi
NEOBUNDLE_DIR=$HOME/.vim/bundle/neobundle.vim
if [ ! -d $NEOBUNDLE_DIR ]; then
  git clone git://github.com/Shougo/neobundle.vim $NEOBUNDLE_DIR
  echo "Created a directory: $NEOBUNDLE_DIR"
fi
echo;

# For vim theme.
COLORS_DIR=$HOME/.vim/colors
if [ ! -d $COLORS_DIR ]; then
  mkdir -p $COLORS_DIR
  echo "Created a directory: $COLORS_DIR"
fi
SYM_MOLOKAI_FILE=$COLORS_DIR/molokai.vim
MOLOKAI_FILE=$PLUGIN_DIR/molokai/colors/molokai.vim
if [ ! -f $SYM_MOLOKAI_FILE ]; then
  ln -s $MOLOKAI_FILE $SYM_MOLOKAI_FILE
  echo "Created symbolic-link $COLORS_DIR/molokai.vim"
fi
echo;

# Execute NeoBundleInstall.
$NEOBUNDLE_DIR/bin/neoinstall
echo "Executed NeoBundleInstall"


# ----- Local settings of .gitconfig -----

echo "-- gitconfig --"
GIT_CONFIG=$HOME/dotfiles/gitconfig
GIT_CONFIG_LOCAL=$GIT_CONFIG/.gitconfig.local
if [ ! -f $GIT_CONFIG_LOCAL ]; then
  cp -p $GIT_CONFIG/.gitconfig.local.template $GIT_CONFIG_LOCAL
  echo "Created a file: $GIT_CONFIG_LOCAL"
fi
echo;


echo "#######################"
echo "#### manual config ####"
echo "#######################"
echo;

cat $DOTFILES/manual_setup
echo;

