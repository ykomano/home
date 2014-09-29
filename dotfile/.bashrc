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

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

export ANDROID_HOME=$HOME/local/android-sdk-macosx
export MONO_HOME=/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands
export RUBY_HOME=$HOME/local/ruby/2.0.0/bin
export QT_HOME=$HOME/local/Qt5.1.1/5.1.1/clang_64/bin
export PHANTOMJS_HOME=$HOME/local/phantomjs/bin
export PYTHON_HOME=$HOME/local/python/3.3.3/bin
#export PATH=$HOME/bin:$PYTHON_HOME:$PHANTOMJS_HOME:$QT_HOME:$RUBY_HOME:$MONO_HOME:/usr/local/bin:$PATH
export PATH=$HOME/bin:$PYTHON_HOME:$PHANTOMJS_HOME:$QT_HOME:$RUBY_HOME:/usr/local/bin:$PATH

export EDITOR=vi
export HISTSIZE=10000
export HISTCONTROL=erasedups
export LSCOLORS=ExgxcxdxCxegedabagacad
export PROMPT_COMMAND='history -a; history -c; history -r'
export PS1='\h:\W\[\e[0;32m\]$(git_branch)$(git_stash)\[\e[0;0m\] \$ '
export PAGER="$HOME/bin/vimpager"
export MANPAGER="$HOME/bin/vimmanpager"

alias git-branch='git branch -a'
alias git-diff='git diff'
alias git-diff-cached='git diff --cached'
alias git-fetch='git fetch --all --prune'
alias git-log='git log -n 100'
alias git-log-first-parent='git log -n 100 --first-parent'
alias git-log-graph='git log -n 100 --graph'
alias git-pull='git pull --prune'
alias git-status='git status'

alias less="$HOME/bin/vimpager"
alias grep='grep --color=auto -In'
alias ll='ls -Ghl'
alias ls='ls -Gh'
alias printunicode='python -c "import sys; print sys.argv[1].decode(\"unicode-escape\")"'
alias ssh='TERM=xterm-256color ssh'
alias unixtime='date +%s'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias vimdiff='vimdiff -c "windo set wrap"'

complete -d cd
complete -d rmdir
complete -c pgrep
complete -c man
complete -c which

if [ -z "$SSH_CONNECTION" ] && [ $(pgrep -U `whoami` Xquartz) ]; then
  /opt/X11/bin/xset r rate 500 45
fi

if [ -z "$TMUX" ]; then
  if [ -z "`tmux ls 2>/dev/null | grep -v attached`" ]; then
    tmux
  else
    tmux ls
  fi
fi
