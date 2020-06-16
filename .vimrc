"---------------------
" Vim configuration
"---------------------

source ~/dotfiles/vimrc/.vimrc.base

source ~/dotfiles/vimrc/.vimrc.keybind

source ~/dotfiles/vimrc/.vimrc.plugin

source ~/dotfiles/vimrc/.vimrc.plugin_setting

source ~/dotfiles/vimrc/.vimrc.color

if filereadable("~/dotfiles/vimrc/.vimrc.local")
  source ~/dotfiles/vimrc/.vimrc.local
endif

