source ~/dotfiles/vimrcs/basic.vim

source ~/dotfiles/vimrcs/plugins.vim

source ~/dotfiles/vimrcs/plugins_config.vim

" This must be put below plugins.vim because color schemes are installed as plugins
source ~/dotfiles/vimrcs/color.vim

if filereadable("~/dotfiles/vimrc/local.vim")
  source ~/dotfiles/vimrcs/local.vim
endif
