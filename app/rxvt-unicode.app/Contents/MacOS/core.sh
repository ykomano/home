#!/bin/sh

export LC_CTYPE="UTF-8"
export LC_ALL="ja_JP.UTF-8"
export LANG="ja_JP.UTF-8"

export XMODIFIERS="@im=uim"
export GTK_IM_MODULE="uim"

cd

FONT='-*-terminus ja-medium-r-*-*-16-*-*-*-*-*-iso10646-1'
$HOME/bin/urxvt -geometry 100x30 -rv -fn "$FONT" -fb "$FONT" +sb -tn xterm-256color -pt OffTheSpot &
