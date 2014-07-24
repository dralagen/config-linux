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
ln -s </my/repo/config-linux>/bash/bashrc ~/.bashrc
ln -s </my/repo/config-linux>/bash/bash_profile ~/.bash_profile
ln -s </my/repo/config-linux>/bash/git-prompt-colors.sh ~/.git-prompt-colors.sh
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
source "</my/repo/config-linux>/bash/git-prompt/gitprompt.sh"
```

For customize your prompt, you can copy _bash/git-prompt-colors.sh_ to _~/.git-prompt-colors.sh_ and edit as you want.

The order of variables without any space is :
```
${LAST_COMMAND_INDICATOR}
${GIT_PROMPT_START_ROOT}
${PROMPT_LEADING_SPACE}
${GIT_PROMPT_PREFIX}
${GIT_PROMPT_BRANCH}${GIT_BRANCH}
${GIT_PROMPT_REMOTE}${GIT_REMOTE}
${GIT_PROMPT_STAGED}${GIT_STAGED}
${GIT_PROMPT_CONFLICTS}${GIT_CONFLICTS}
${GIT_PROMPT_CHANGED}${GIT_CHANGED}
${GIT_PROMPT_UNTRACKED}${GIT_UNTRACKED}
${GIT_PROMPT_STASHED}${GIT_STASHED}
${GIT_PROMPT_CLEAN}
${ResetColor}
${GIT_PROMPT_SUFFIX}
${PROMPT_END}
```



Color scheme
------------

For install color scheme for URxvt just copy _Xdefaults_ to _~/.Xdefaults_
```
ln -s </my/repo/config-linux>/Xdefaults ~/.Xdefaults
```

Git Config
----------

When you execute a command style _git config --global_ you write in ~/.gitconfig
I use git for partage one config for all machine who use git.
```
ln -s </my/repo/config-linux>/gitconfig ~/.gitconfig
```

Note
----

I use link, not copy because when I pull in this repo, I want update my config system.


We want to replace _/my/repo/config-linux/_ by the path of this repo in your system. If you want juste add some line we use copy/paste with your favorite editor.

