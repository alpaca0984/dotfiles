Sample of `~/.bash_profile`

```bash
export EDITOR="/usr/local/bin/nvim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# This is needed by tmux. To install it, see https://powerline.readthedocs.io/en/latest/installation/osx.html#python-package
export POWERLINE_REPOSITORY_ROOT=$(pip show powerline-status | grep Location | cut -d ' ' -f 2)

# Change shell.
files=("/usr/local/bin/fish" "/usr/bin/fish")
for file in "${files[@]}"
do
  if [[ -x "$file" ]]; then
    export SHELL=$file
    exec $SHELL
  fi
done
```

In addition, you need to install some dependencies manually.

Install `fisher` from https://github.com/jorgebucaran/fisher

Install python packages:
```bash
pip3 install neovim powerline-status
```

Enable neovim to use `vim.rc`. To do that you need to create `~/.config/nvim/init.vim` file. Detail is here: https://neovim.io/doc/user/nvim.html#nvim-from-vim

Install powerline fonts from https://github.com/powerline/fonts (I personally prefer `Droid Sans Mono for Powerline`)
