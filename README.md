### ./myconf

Commands used:

    git init --bare $HOME/.myconf
    alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
    config config status.showUntrackedFiles no

Where my ~/.myconf directory is a git bare repository. 

Then any file within the home folder can be versioned with normal commands like:

    config status
    config add .vimrc
    config commit -m "Add vimrc"
    config add .config/redshift.conf
    config commit -m "Add redshift config"
    config push

This setup can be replicated on another machine using the commands below:

    git clone --separate-git-dir=$HOME/.myconf /path/to/repo $HOME/myconf-tmp
    rm -r ~/myconf-tmp/
    alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

Source: https://tinyurl.com/ywsf9yay
