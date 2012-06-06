# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="neaf"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/tools:$HOME/software/bin:/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl
export LD_LIBRARY_PATH=$HOME/software/lib:$LD_LIBRARY_PATH

# Editr
export EDITOR=vim

# Locale
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# RVM
[[ -s "/Users/neaf/.rvm/scripts/rvm" ]] && source "/Users/neaf/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# Keys
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history

# Word jump
export WORDCHARS=''
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# Aliases
alias be="bundle exec"
alias gs="git sync"
alias gc="git commit"
alias gd="git diff origin/master"
alias serve="python -m SimpleHTTPServer"
alias dsandbox="git push sandbox sandbox:master"
alias dproduction="git push production master:master"

# Jump
source `/Users/neaf/.rvm/gems/ruby-1.9.3-p194/bin/jump-bin --zsh-integration`
alias j=jump
