#|/bin/sh

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P)
echo $SCRIPT_PATH
# copy .vimrc and .gvimrc to the home
echo "set rtp+=$SCRIPT_PATH" > ~/.vimrc
echo "source $SCRIPT_PATH/vimrc" >> ~/.vimrc
cp $SCRIPT_PATH/gvimrc ~/.gvimrc
