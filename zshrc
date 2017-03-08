HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pascal/.zshrc'

autoload -Uz compinit
compinit

# Bash word matching
autoload -U select-word-style
select-word-style bash

# End of lines added by compinstall

source ~/.zsh/git-prompt/zshrc.sh
PROMPT='%B%~%b$(git_super_status) %# '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Enable virtualenvwrapper
if [ -e /usr/local/bin/virtualenvwrapper.sh ]; then
   source /usr/local/bin/virtualenvwrapper.sh
fi

function win() {
        cd $1
        shift
        last_pane=$(tmux display -p '#S:#I.#P')
        for arg in $@ ; do
                last_pane=$(tmux split-window -dPt $last_pane)
                tmux send -t "$last_pane" cd SPACE $arg ENTER
                tmux select-layout tiled
        done
}

alias vi='emacsclient -c -nw'

function dockerfail() {
        pattern=$1
        if [ -z "$pattern" ] ; then
                echo "Usage: dockerfail <pattern>"
                return 1
        fi
        docker ps -a | head | grep Exited | grep $pattern | head -n 1 | awk '{print $1}' | xargs docker logs
}

alias dcl='docker ps -aq | xargs docker rm'
alias dco='docker-compose'
alias dsa='docker ps -q | xargs docker stop'
alias xm='make -f ~/dev/xm/Makefile'
