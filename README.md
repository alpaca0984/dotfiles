## Update profile

Change `~/.bash_profile` or `~/.zprofile` according to your default shell
```sh
# Change shell.
FISH_SHELL="/usr/local/bin/fish"
if [ -x "$FISH_SHELL" ]; then
  export SHELL=$FISH_SHELL
  exec $FISH_SHELL
fi
```

## Manual operation

### Homebrew

Install from https://brew.sh/ and load formulae
```bash
$ cd <dotfiles dir>
$ brew bundle
```

### fish shell

Install `fisher` from https://github.com/jorgebucaran/fisher

### Python packages

They are required by `nvim` and `tmux`
```bash
$ pyenv install <python-version>
$ pyenv rehash
$ pyenv global <python-version>
$ pip install neovim powerline-status psutil netifaces
```

### fonts

Install powerline fonts from either of them
- https://www.jetbrains.com/lp/mono/
- https://github.com/powerline/fonts (I personally prefer `Droid Sans Mono for Powerline`)
