#!/bin/bash

cd $HOME
DOTFILES=$HOME/dotfiles


# ----- Create backup directory. -----

DATE=`date +%Y%m%d_%H%M%S`
BACKUP_DIR=$HOME/backup_home/$DATE
mkdir -p $BACKUP_DIR
echo "Created a directory: $BACKUP_DIR"
echo;


# ----- Create links with backup -----

FILES=(
  .gitconfig
  .gitignore
  .ideavimrc
  .tmux.conf
  .vimrc
  .config/fish/config.fish
  .config/fish/fish_plugins
  .config/karabiner/assets
  .config/karabiner/karabiner.json
  .config/nvim/init.vim
  .config/powerline
)

mkdir -p $HOME/.config/{fish,karabiner,nvim,powerline}
mkdir -p $BACKUP_DIR/.config/{fish,karabiner,nvim,powerline}

for file in "${FILES[@]}"
do
  if [ -e $HOME/$file ]; then
    cp -pr $HOME/$file $BACKUP_DIR/$file
    rm -rf $HOME/$file
  fi
  ln -s $DOTFILES/$file $HOME/$file
done
echo;


# ----- Local settings for gitconfig -----

GIT_CONFIG_LOCAL=$HOME/.gitconfig.local
if [ ! -f $GIT_CONFIG_LOCAL ]; then
  cp $DOTFILES/gitconfig/.gitconfig.local $GIT_CONFIG_LOCAL
fi
echo;


echo "#######################"
echo "#### manual config ####"
echo "#######################"
echo;

cat $DOTFILES/README.md
echo;
