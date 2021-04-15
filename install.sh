git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

sed -i 's/'"$BASH_IT_THEME"'/sexy/g' ~/.bashrc

bash-it enable alias git

bash-it enable plugin git
bash-it enable plugin gitstatus
bash-it enable plugin thefuck

mkdir ~/micro && cd ~/micro && curl https://getmic.ro | bash
echo "PATH=$PATH:~/micro" >> ~/.bashrc
