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

rm -rf tmux_git; mkdir -p tmux_git; cd tmux_git; git clone https://github.com/tmux/tmux.git
cd tmux; ./autogen.sh; ./configure && make -j; sudo make install; cd ../..; rm -rf tmux_git
cp tmux.conf ~/.tmux.conf
