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

**In addition, you need to install some dependencies manually.**

Install `brew` https://brew.sh/ and load formulae
```bash
$ cd <dotfiles dir>
$ brew bundle
```

Install `fisher` from https://github.com/jorgebucaran/fisher

Install python packages:
```bash
$ pyenv install <python-version>
$ pyenv rehash
$ pyenv global <python-version>
$ pip install neovim powerline-status psutil netifaces
```

Install powerline fonts from:
- https://www.jetbrains.com/lp/mono/
- https://github.com/powerline/fonts (I personally prefer `Droid Sans Mono for Powerline`)
