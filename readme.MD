# ZSH Configuration

##  Description: 
This repo holds useful ZSH configurations. The .zshrc contains a set of tricks and tweeks that eases your when life working with the iTerm2.


## Work from others

* [switching-to-zsh] Thanks to Zach Alexander
* [themes] 
* [Fonts] 
* [agnoster-zsh-theme] 
* [ohmyzsh-basic-installation]


[switching-to-zsh]:                         http://zpalexander.com/switching-to-zsh/
[themes]:                                   https://github.com/ohmyzsh/ohmyzsh/wiki/themes
[fonts]:                                    https://github.com/powerline/fonts
[agnoster-zsh-theme]:                       https://github.com/agnoster/agnoster-zsh-theme
[ohmyzsh-basic-installation]:               https://github.com/ohmyzsh/ohmyzsh#basic-installation

## Prerequs


zsh must be installed. "which" output should be /bin/zsh
```console
$ which zsh
```


## Installation

Intall from git repo into your home directory

```console
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Download the git repo into a directory of your choice. I just put it in a directory named "github" in my home directory.

```console
$ git clone https://github.com/powerline/fonts.git
```

Navigate to fonts directory.
```console
$ cd fonts/
```

Execute the install Script and the fonts will be installed
```console
$ ./install.sh
```

Edit the value ZSH_THEME Variable in your .zshrc to to setup the agnoster theme

```console
ZSH_THEME="agnoster"
```

Add the prompt_context at the bottom of your .zshrc to hide username when you are logged in as yourself

```console
prompt_context() {}
```


Finally, to configure your preferred color settings in iterm2, go to preferences --> Profiles --> Text. Under font choose "Meslo LG L for Powerline" and make sure to uncheck "Use a different font for non-ASCII text". 

