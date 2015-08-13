#!/bin/bash

echo ">>> installing NeoBundle..."
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

echo ">>> coping vimrc..."
cp ./my_vimrc ~/.vimrc

echo ">>> installing cscope..."
wget http://downloads.sourceforge.net/project/cscope/cscope/15.8b/cscope-15.8b.tar.gz\?r\=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fcscope%2F%3Fsource%3Dtyp_redirect\&ts\=1439457691\&use_mirror\=netassist -O cscope.tar.gz
tar xvf cscope.tar.gz
cd ./cscope-15.8b
./configure --prefix=`pwd`/cscope
make
make install
cd -

mkdir -p ~/tmp
