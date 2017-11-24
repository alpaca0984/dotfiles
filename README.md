In ~/.bash_profile, put this code.

```bash
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
