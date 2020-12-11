set -U fish_user_paths "/usr/local/sbin" $fish_user_paths


# ----- Aliases -----

alias rm="rm -i"
alias ag="ag --pager='less -R'"

if type -q nvim
  alias vim="nvim"
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
#   https://github.com/direnv/direnv/blob/master/docs/hook.md#fish
eval (direnv hook fish)

# rbenv
#   `$ rbenv init fish`
status --is-interactive; and source (rbenv init -|psub)

# pyenv
#   https://github.com/pyenv/pyenv-virtualenv#installing-as-a-pyenv-plugin
status --is-interactive; and pyenv init - | source
