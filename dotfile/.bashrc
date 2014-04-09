if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

git_branch() {
    git status >/dev/null 2>&1 || return
    git status | awk 'BEGIN{ printf "(" } /^On branch/{ printf $3 } /^HEAD/{ printf $2" "$3" "$4 } /^Changes/{ printf "*" } END{ printf ")" }'
}
git_stash() {
    COUNT=`git stash list 2>/dev/null | wc -l | sed 's/^ *//'`
    if [ $COUNT -gt 0 ]; then
        echo -n "($COUNT)"
    fi
}

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

export MONO_HOME=/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands
export RUBY_HOME=$HOME/local/ruby/2.0.0/bin
export QT_HOME=$HOME/local/Qt5.1.1/5.1.1/clang_64/bin
export PHANTOMJS_HOME=$HOME/local/phantomjs/bin
export PATH=$HOME/bin:$PHANTOMJS_HOME:$QT_HOME:$RUBY_HOME:$MONO_HOME:/usr/local/bin:$PATH

export EDITOR=vi
export HISTSIZE=10000
export HISTCONTROL=erasedups
export PROMPT_COMMAND='history -a; history -c; history -r'
export PS1='\h:\W\[\e[0;32m\]$(git_branch)$(git_stash)\[\e[0;0m\] \$ '

alias grep='grep --color=auto -I'
alias less='/usr/share/vim/vim73/macros/less.sh'
alias ll='ls -lhG'
alias ssh='TERM=xterm-256color ssh'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias printunicode='python -c "import sys; print sys.argv[1].decode(\"unicode-escape\")"'
alias vimdiff='vimdiff -c "windo set wrap"'

complete -d cd
complete -d rmdir
complete -c pgrep
complete -c man
complete -c which
