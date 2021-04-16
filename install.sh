#!/usr/bin/env bash

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

. ~/.bash_it/bash_it.sh

bash-it enable alias git
bash-it enable plugin git
bash-it enable plugin gitstatus
sed -i 's/'"$BASH_IT_THEME"'/sexy/g' ~/.bashrc

mkdir ~/micro && cd ~/micro && curl https://getmic.ro | bash
echo 'export PATH="$HOME/micro:$PATH"' >> ~/.bashrc

source ~/.bashrc
