set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# ----- Aliases -----
alias rm "rm -i"
alias ag='ag --pager="less -R"'

# ----- Key bindings -----
if type -q fzf
  bind \cr fzf
end

# ----- Theme settings for bobthefish -----
set -g theme_display_date no
set -g theme_display_ruby no
set -g theme_color_scheme terminal2
set -g theme_display_user yes
set -g theme_display_hostname yes
set -g theme_title_use_abbreviated_path no
set -g theme_title_display_user yes
set -g theme_display_k8s_context no

