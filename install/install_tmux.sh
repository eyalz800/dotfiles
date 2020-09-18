#!/usr/bin/env bash

set -e

if command -v tmux > /dev/null; then
    ver=$(tmux -V | tr -d -c 0-9\.)
    if (( $(echo "$ver >= 3.1" | bc -l) )); then
        echo "tmux already installed"
        #exit 0
    fi
fi

sudo apt-get update
sudo apt-get install -y build-essential gcc autotools-dev automake libncurses5-dev libncursesw5-dev libevent-dev xclip bison
/usr/bin/env python -m pip install psutil

rm -rf tmux
git clone https://github.com/tmux/tmux.git || die "cannot clone tmux source"
cd tmux; ./autogen.sh; ./configure && make -j; sudo make install; cd ..
cp tmux.conf ~/.tmux.conf || die "could deploy .tmux.conf"
