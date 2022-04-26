# ZSH Configuration

##  Description
The Z shell (zsh) is becomming more popular due to huge community support and plugins and lastly, after all macOS is replacing bash with zsh as default shell. This repo holds useful ZSH configurations. The `.zshrc` file contains a set of tricks and tweeks that eases your life when working with iTerm2 on macOS.


## Work from others

* [switching-to-zsh] Thanks to Zach Alexander
* [themes] 
* [fonts] 
* [agnoster-zsh-theme] 
* [ohmyzsh-basic-installation]


[switching-to-zsh]:                         http://zpalexander.com/switching-to-zsh/
[themes]:                                   https://github.com/ohmyzsh/ohmyzsh/wiki/themes
[fonts]:                                    https://github.com/powerline/fonts
[agnoster-zsh-theme]:                       https://github.com/agnoster/agnoster-zsh-theme
[ohmyzsh-basic-installation]:               https://github.com/ohmyzsh/ohmyzsh#basic-installation

## Prerequs

* git, iTerm2 (see the details in the [setup.sh](./setup.sh) for latest M1 Mac)
* zsh must be installed. "which" output should be `/bin/zsh`
```console
$ which zsh
```


## Installation

Intall from git repo into your home directory. (In case you get asked to change the default shell to zsh you can say "Yes")

```console
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Download the git repo into a directory of your choice. I just put it in a directory named "github" in my home directory.

```console
git clone https://github.com/powerline/fonts.git
```

Navigate to fonts directory.
```console
cd fonts/
```

Execute the install script and the fonts will be installed. Afterwards go back to your home direcory by adding `cd`. 
```console
./install.sh; cd
```

Open the `.zshrc` file and edit the value of the variable ZSH_THEME to setup the agnoster theme

```console
ZSH_THEME="agnoster"
```

Add the prompt context at the bottom of your `.zshrc` to hide username when you are logged in as yourself. Just type:

```console
echo 'prompt_context() {}' >> .zshrc
```


Finally, to configure your preferred color settings in iTerm2, go to preferences --> Profiles --> Text. Under font choose "Meslo LG L for Powerline" and make sure to uncheck "Use a different font for non-ASCII text". 

