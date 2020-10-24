Sample of `~/.bash_profile`

```bash
export EDITOR="/usr/local/bin/nvim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# This is needed by tmux. To install it, see https://powerline.readthedocs.io/en/latest/installation/osx.html#python-package
export POWERLINE_REPOSITORY_ROOT=/usr/local/lib/python3.7/site-packages

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
