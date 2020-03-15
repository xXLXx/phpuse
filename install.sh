#!/bin/sh

installdir=/usr/local/bin

chmod +x ./phpuse
cp ./phpuse $installdir

if [ ! -f ~/.bash_profile ]; then
    touch ~/.bash_profile
fi

if [ "$(cat ~/.bash_profile | grep "source $installdir/phpuse")" = "" ]; then
    echo "\nsource $installdir/phpuse" >> ~/.bash_profile
fi

exec bash -l