A modular VIM configuration 
=================

I'm using VIM for a while, and I looked for a way to have a modular configuration
simple to manage, thet lets me experiments with different plugins, so being able
to install/remove plugins hassle-free is a must.

# Philosophy
I'm tracking the configuration with [Git], I keep the plugins in their own
path with [Vundle], so it's really simple to add/remove them. 
Also a simple installation script lets you configure in a few seconds a new 
machine !

# Installation
Installation is simple, just clone the repo in a directory of your choice
and run the install.sh script to install your new vim configuration

```bash
git clone git://github.com/gianluigi/incorrect-vim ~/.incorrect-vim
sh ~/.incorrect-vim
```  
# Update
Update plugins via the [Vundle] Command: :PluginUpdate simple as it is !

Update the vimrc via a git rebase:

    git ~/.incorrect-vim
    git pull --rebase

[Git]: http://git-scm.org
[Vundle]: https://github.:com/gmarik/Vundle.vim
