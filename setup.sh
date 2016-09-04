#!/bin/bash

DOTFILES="$HOME/dotfiles"

cd $HOME

#####################################################################
#### デフォルトで存在するファイルをbackup_homeディレクトリに格納 ####
#####################################################################
echo "-- backup --"
DATE=`date +%Y%m%d_%H%M%S`
BACKUP_DIR=$HOME/backup_home/$DATE/
mkdir -p $BACKUP_DIR
echo "$BACKUP_DIRディレクトリを作成しました。"
echo;

## HOMEの全ファイルをループ
#for file in * .??*
#do
#  case $file in
#  # 指定ファイルはバックアップ除外
#  "."|".."|"dotfiles"|"backup_home")
#    echo "$fileはコピー対象ではありません。"
#    continue
#    ;;
#  esac
#  # バックアップ
#  cp -pr $HOME/$file $BACKUP_DIR
#  echo "$fileをコピーしました。"
#done
#echo;

#########################################################
##### standard dotfiles(必ずシンボリックを張り直す) #####
#########################################################
ary=(".zshrc" ".gitconfig" ".tmux.conf" ".vimrc" ".gemrc" ".innotop" ".config")
for file in "${ary[@]}"
do
  echo "-- $file --"
  if [ -e $HOME/$file ]; then
    cp -pr $HOME/$file $BACKUP_DIR # backup
    rm -f $HOME/$file
    echo "$HOME/$fileを削除しました。"
  fi
  ln -s $DOTFILES/$file $file
  echo "$HOME/$fileをシンボリックリンクで作成しました。"
  echo;
done

####################
#### vim config ####
####################
echo "-- vim --"
# neobundle
PLUGIN_DIR=$HOME/.vim/bundle
if [ ! -d $PLUGIN_DIR ]; then
  mkdir -p $PLUGIN_DIR
  echo "$PLUGIN_DIRディレクトリを作成しました。"
fi
NEOBUNDLE_DIR=$HOME/.vim/bundle/neobundle.vim
if [ ! -d $NEOBUNDLE_DIR ]; then
  git clone git://github.com/Shougo/neobundle.vim $NEOBUNDLE_DIR
  echo "$NEOBUNDLE_DIRディレクトリを作成しました。"
fi
echo;

# color
COLORS_DIR=$HOME/.vim/colors
if [ ! -d $COLORS_DIR ]; then
  mkdir -p $COLORS_DIR
  echo "$COLORS_DIRディレクトリを作成しました。"
fi
SYM_MOLOKAI_FILE=$COLORS_DIR/molokai.vim
MOLOKAI_FILE=$PLUGIN_DIR/molokai/colors/molokai.vim
if [ ! -f $SYM_MOLOKAI_FILE ]; then
  ln -s $MOLOKAI_FILE $SYM_MOLOKAI_FILE
  echo "$COLORS_DIR/molokai.vimをシンボリックリンクで作成しました。"
fi
echo;

###########################################
#### gitconfig                         ####
####  - ファイルが存在したら削除しない ####
###########################################
echo "-- gitconfig --"
GIT_CONFIG=$HOME/dotfiles/gitconfig
GIT_CONFIG_LOCAL=$GIT_CONFIG/.gitconfig.local
if [ ! -f $GIT_CONFIG_LOCAL ]; then
  cp -p $GIT_CONFIG/.gitconfig.local.template $GIT_CONFIG_LOCAL
  echo "$GIT_CONFIG_LOCALファイルを作成しました。"
fi
echo;

echo "#######################"
echo "#### manual config ####"
echo "#######################"
echo;

cat $DOTFILES/manual_setup
echo;


