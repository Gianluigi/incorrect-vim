#|/bin/sh

# get the path of the running script 
# use it for building the vim runtime path 
# the install scripts makes no assumption on the directory name
# for your VIM configuration
SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P)

# copy .vimrc and .gvimrc to the home
echo "set rtp+=$SCRIPT_PATH" > ~/.vimrc
echo "set rtp+=$SCRIPT_PATH/bundle/vundle/" >> ~/.vimrc
echo "source $SCRIPT_PATH/vimrc" >> ~/.vimrc
cp $SCRIPT_PATH/gvimrc ~/.gvimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~$SCRIPT_PATH/bundle/vundle
# install plugins with vundle via command line
vim +PluginInstall +qall
