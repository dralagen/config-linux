Config Linux
============


Bash config
-----------

For Full install execute this command :

```
git submodules update --init
```

Apply the config of bash in your machine :
```
ln -s /my/repo/config-linux/bash/bashrc ~/.bashrc
ln -s /my/repo/config-linux/bash/bash_profile ~/.bash_profile
ln -s /my/repo/config-linux/bash/git-prompt-colors.sh ~/.git-prompt-colors.sh
```

If you don't want git prompt then you don't need the last link and you need to delete the line of _~/.bashrc_ with *source "$DIR_BASHRC/git-prompt/gitprompt.sh"*

Git prompt
----------

For Git prompt you need submodules
```
git submodules update --init
```

You want just git prompt see [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt) and add in your _~/.bashrc_ this line :
```
export GIT_PROMPT_ONLY_IN_REPO=0
export GIT_PROMPT_FETCH_REMOTE_STATUS=1
source "/my/repo/config-linux/bash/git-prompt/gitprompt.sh"
```

Color scheme
------------

For install color scheme for URxvt just copy _/my/repo/config-linux/Xdefaults_ to _~/.Xdefaults_
```
ln -s /my/repo/config-linux/Xdefaults ~/.Xdefaults
```

Git Config
----------

When you execute a command style _git config --global_ you write in ~/.gitconfig
I use git for partage one config for all machine who use git.
```
ln -s /my/repo/config-linux/gitconfig ~/.gitconfig
```

Note
----

I use link, not copy because when I pull in this repo, I want update my config system.


We want to replace _/my/repo/config-linux/_ by the path of this repo in your system. If you want juste add some line we use copy/paste with your favorite editor.

