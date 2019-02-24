Sample of `~/.bash_profile`

```bash
export EDITOR="/usr/local/bin/vim"
# These are needed by tmux
export POWERLINE_REPOSITORY_ROOT=/usr/local/lib/python2.7/site-packages
export LC_ALL='ja_JP.UTF-8'

# Change shell.
files=("/usr/local/bin/fish" "/usr/bin/fish" "$HOME/local/bin/zsh" "/usr/local/bin/zsh" "/usr/bin/zsh" "/bin/zsh")
for file in "${files[@]}"
do
  if [[ -x "$file" ]]; then
    export SHELL=$file
    exec $SHELL
  fi
done
```
