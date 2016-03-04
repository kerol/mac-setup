# Zsh

We'll install `zsh` for all the features offered by `oh-my-zsh`. The installation and usage is really intutive. The `zshenv.sh` is a config file we maintain so as to not pollute the `~/.zshrc` too much. `zshenv.sh` holds aliases, exports, path changes etc.
`Notes:`Keep only .zsh-update .zsh_history .zshrc in your home folder.

### Zsh

Install zsh and zsh completions using homebrew

        brew install zsh zsh-completions

Install oh-my-zsh on top of zsh to getting additional functionality

        curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

if still in the default shell, change default shell to zsh manually

    chsh -s /bin/zsh

edit the `.zshrc` by opening the file in a text editor

        # Theme
        ZSH_THEME="pygmalion"

        # Plugins
        plugins=(git colored-man colorize github hira vagrant virtualenv pip python brew osx zsh-syntax-hightlighting)

        # oh-my-zsh
        export ZSH=/Users/kevin/.oh-my-zsh
        source $ZSH/oh-my-zsh.sh

        # zshenv
        source /Users/kevin/Github/mac-setup/iTerm/zshenv.sh

### zshenv.sh
~~~
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
~~~
