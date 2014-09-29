#!/bin/sh

export LC_CTYPE="UTF-8"
export LC_ALL="ja_JP.UTF-8"
export LANG="ja_JP.UTF-8"

export XMODIFIERS="@im=uim"
export GTK_IM_MODULE="uim"

cd

$HOME/bin/urxvt &
