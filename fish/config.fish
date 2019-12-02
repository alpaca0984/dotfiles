set -U fish_user_paths "/usr/local/sbin" $fish_user_paths


# ----- Aliases -----

alias rm="rm -i"
alias ag="ag --pager='less -R'"

if type -q nvim
  alias vim="nvim"
end

# ----- Key bindings -----

if type -q fzf
  bind \cr fzf
end


# ----- Theme settings for bobthefish -----

set -g theme_display_date no
set -g theme_display_ruby no
set -g theme_color_scheme terminal2
set -g theme_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_title_display_user yes
set -g theme_display_k8s_context no


# ----- Plugin settings -----

# direnv
#   https://github.com/direnv/direnv#fish
eval (direnv hook fish)

# rbenv
#   https://github.com/direnv/direnv#fish
status --is-interactive; and source (rbenv init -|psub)

# Texinfo
#   brew info texinfo
set -U fish_user_paths "/usr/local/opt/texinfo/bin" $fish_user_paths

# Load rbenv automatically by appending
# the following to ~/.config/fish/config.fish:
status --is-interactive; and source (rbenv init -|psub)

# @see https://github.com/pyenv/pyenv-virtualenv#installing-as-a-pyenv-plugin
status --is-interactive; and pyenv init - | source

