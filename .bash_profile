# Prevent tmux from fucking up the PATH variable
# https://superuser.com/questions/544989/does-tmux-sort-the-path-variable?newreg=7bfa217bb7324ea4be1e56f7474c644d
if [ -n "$TMUX" ]; then
	PATH=""
	source /etc/profile
fi

# My handsome PS1
export PS1='\[\e[0;32m\]\u \W $ \[\e[m\]'

#Homebrew
export PATH=/usr/local/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ycan/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ycan/anaconda/etc/profile.d/conda.sh" ]; then
        . "/Users/ycan/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ycan/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# Set default editor
export EDITOR=nvim

alias ll='ls -la'
# Enable colors for ls
export CLICOLOR=1
# Activate vi mode for editing commands
set -o vi

# Disable Ctrl-S freezing the terminal
stty -ixon

# Use the latest version of ctags from homebrew
alias ctags="/usr/local/bin/ctags"
# Common options to use with git
alias ctg="/usr/local/bin/ctags -R --exclude=.git"

export PYTHONSTARTUP=$HOME/.pythonrc

# Initialize rbenv
eval "$(rbenv init -)"

#Disable zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1
