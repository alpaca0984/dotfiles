"---------------------
" Vim configuration
"---------------------

source ~/dotfiles/vimrcs/basic.vim

source ~/dotfiles/vimrcs/keybind.vim

source ~/dotfiles/vimrcs/plugins.vim

source ~/dotfiles/vimrcs/plugins_config.vim

source ~/dotfiles/vimrcs/color.vim

if filereadable("~/dotfiles/vimrc/local.vim")
  source ~/dotfiles/vimrcs/local.vim
endif
