#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Python
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# homebrew: git vim 
export PATH="/usr/local/Cellar/git/2.7.1/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/Cellar/vim/7.4.1345/bin:/usr/local/bin:$PATH"
# Database
export PATH="/usr/local/mysql/bin:/usr/local/bin:$PATH"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Others
export EDITOR='vim'

# Alias
alias ls="ls -F"