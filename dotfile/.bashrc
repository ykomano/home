if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

git_branch() {
    git status >/dev/null 2>&1 || return
    git status | awk 'BEGIN{ printf "(" } /^On branch/{ printf $3 } /^HEAD/{ printf $2" "$3" "$4 } /^Changes/{ printf "*" } END{ printf ")" }'
}
git_stash() {
    COUNT=`git stash list 2>/dev/null | grep -c ".*"`
    if [ $COUNT -gt 0 ]; then
        echo -n "($COUNT)"
    fi
}

switch_java() {
  OLD_HOME=$JAVA_HOME
  export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home -v $1`
  if [ -z $OLD_HOME ]; then
    export PATH=$JAVA_HOME/bin:$PATH
  else
    export PATH=`echo $PATH | sed "s|$OLD_HOME/bin|$JAVA_HOME/bin|g"`
  fi
}

# default is Java 1.8
switch_java 1.8

# for anyenv
if [ -d "$HOME/.anyenv" ]; then
  if [ -z $ANYENV_HOME ]; then
    export ANYENV_HOME=$HOME/.anyenv/bin
    export PATH=$ANYENV_HOME:$PATH
  fi

  eval "$(anyenv init -)"

  for XENV in `ls "$HOME/.anyenv/envs"`; do
    export PATH=$HOME/.anyenv/envs/$XENV/shims:$PATH
  done
fi

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

export ANDROID_HOME=/usr/local/opt/android-sdk
export BREW_HOME=/usr/local
export MONO_HOME=/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands
#export QT_HOME=$HOME/local/Qt5.1.1/5.1.1/clang_64/bin

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/work/go
export GO15VENDOREXPERIMENT=1

export PATH=$GOROOT/bin:$BREW_HOME/bin:$BREW_HOME/sbin:$PATH

export EDITOR=vim
export HISTSIZE=10000
export HISTCONTROL=erasedups
export LSCOLORS=ExgxcxdxCxegedabagacad
export PROMPT_COMMAND='history -a; history -c; history -r'
export PS1='\h:\W\[\e[0;32m\]$(git_branch)$(git_stash)\[\e[0;0m\] \$ '
export PAGER=vimpager
export MANPAGER="$HOME/work/home/bin/manpager.sh"

export MAVEN_OPTS="-Xmx512M"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_NO_ANALYTICS=1

alias git-branch='git branch --all'
alias git-clean='git clean -d --force --interactive -x'
alias git-diff='git diff'
alias git-diff-cached='git diff --cached'
alias git-fetch='git fetch --all --prune'
alias git-log='git log --graph --date-order --pretty=format:"<%h> %ad [%an] %s%d" --date=short'
alias git-pull='git pull --prune'
alias git-status='git status --short --branch'

alias less=vimpager
alias grep='grep --color=auto -In'
alias ll='ls -Ghl'
alias ls='ls -Gh'
alias printunicode='python -c "import sys; print sys.argv[1].decode(\"unicode-escape\")"'
alias ssh='TERM=xterm-256color ssh'
alias to-unixtime='date +%s'
alias from-unixtime='date -r'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias vi=vim

complete -d cd
complete -d rmdir
complete -c pgrep
complete -c man
complete -c which

if [ -z "$TMUX" ]; then
  if [ -z "`tmux ls 2>/dev/null | grep -v attached`" ]; then
    tmux
  else
    tmux ls
  fi
fi
