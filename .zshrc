#######################################
# zsh設定
#######################################

# PATHを通す
export PATH="$PATH:$HOME/dotfiles/bin"

# ベースの設定
[ -f ${HOME}/dotfiles/zshrc/.zshrc.base ] && source ${HOME}/dotfiles/zshrc/.zshrc.base

# プロンプトの設定
[ -f ${HOME}/dotfiles/zshrc/.zshrc.prompt ] && source ${HOME}/dotfiles/zshrc/.zshrc.prompt

# ターミナルの設定
[ -f ${HOME}/dotfiles/zshrc/.zshrc.terminal ] && source ${HOME}/dotfiles/zshrc/.zshrc.terminal

# aliasの設定
[ -f ${HOME}/dotfiles/zshrc/.zshrc.alias ] && source ${HOME}/dotfiles/zshrc/.zshrc.alias

# pecoの設定
[ -f ${HOME}/dotfiles/zshrc/.zshrc.peco ] && source ${HOME}/dotfiles/zshrc/.zshrc.peco

# マシンごとの設定
[ -f ${HOME}/dotfiles/zshrc/.zshrc.`hostname -s` ] && source ${HOME}/dotfiles/zshrc/.zshrc.`hostname -s`

