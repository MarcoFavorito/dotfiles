# dotfiles
My dotfiles and environment setup scripts.

## components

There's a few special files in the hierarchy.

- `bin/`: Anything in bin/ will get added to your $PATH and be made available everywhere.
- `scripts/`: scripts to manage the setup of the dotfiles and the environment.
- `docker/`: Dockerfiles for useful Docker images.
- `topic/*.sh`: Any files ending in .sh get loaded into your environment.
- `topic/path.sh`: Any file named path.sh is loaded first and is expected to setup $PATH 
   or similar.
- `topic/completion.sh`: Any file named completion.sh is loaded last and is expected to
   setup autocomplete.
- `topic/install.sh`: Any file named install.sh is executed when you run script/install. 
   To avoid being loaded automatically, its extension is .sh, not .sh.
- `topic/*.symlink`: Any file ending in *.symlink gets symlinked into your $HOME. This 
   is so you can keep all of those versioned in your dotfiles but still keep those 
   autoloaded files in your home directory. These get symlinked in when 
   you run script/bootstrap.

## links

- [dotfiles github guide](http://dotfiles.github.io/)

## credits

Many thanks to [@holman/dotfiles](https://github.com/holman/dotfiles); I drawn a lot of inspiration from his dotfiles repo.

Thanks also to [this post](http://marcgg.com/blog/2016/03/01/vimrc-example/) for Vim configurations.
