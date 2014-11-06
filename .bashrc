# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Use specific aliases and functions
if [ "$SSH_TTY" != "" ]; then
  exec /bin/zsh
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
