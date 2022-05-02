# ZSH Configuration

##  Description
The Z shell (zsh) is becomming more popular due to huge community support and plugins and lastly, after all macOS is replacing bash with zsh as default shell. This repo holds useful ZSH configurations. The `.zshrc` file contains a set of tricks and tweeks that eases your life when working with iTerm2 on macOS.


## Work from others

* [switching-to-zsh] Thanks to Zach Alexander
* [themes] 
* [fonts] 
* [agnoster-zsh-theme] 
* [ohmyzsh-basic-installation]
* [color-theme-installation]


[switching-to-zsh]:                         http://zpalexander.com/switching-to-zsh/
[themes]:                                   https://github.com/ohmyzsh/ohmyzsh/wiki/themes
[fonts]:                                    https://github.com/powerline/fonts
[agnoster-zsh-theme]:                       https://github.com/agnoster/agnoster-zsh-theme
[ohmyzsh-basic-installation]:               https://github.com/ohmyzsh/ohmyzsh#basic-installation
[color-theme-installation]:                 https://gabrieltanner.org/blog/customizing-terminal-using-ohmyzsh

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


### Enable word jumps and word deletion:
By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to "iTerm → Preferences → Profiles → Keys → Presets... → Natural Text Editing

*(source: [kevin smets](https://gist.github.com/kevin-smets/8568070#enable-word-jumps-and-word-deletion-aka-natural-text-selection))*

### zsh-autosuggestions (Optional, but recommended):
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions\n
```

Choose one of the options

## Option1: Agnoster Theme

Open the `.zshrc` file and edit the value of the variable `ZSH_THEME` to setup the agnoster theme

```console
ZSH_THEME="agnoster"
```

Add the prompt context at the bottom of your `.zshrc` to hide username when you are logged in as yourself. Just type:

```console
echo 'prompt_context() {}' >> .zshrc
```

Install the solarized iTerm color theme

```console
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
```

To configure the the solarized color them go to preferences --> Profiles --> Colors --> in the "Color Presets dropdown, choose solarized dark or light

Finally the right font in iTerm2, go to preferences --> Profiles --> Text. Under font choose "Meslo LG L for Powerline" and make sure to uncheck "Use a different font for non-ASCII text". 

Refs:
- https://gist.github.com/kevin-smets/8568070#install-with-curl


## Option2: Powerlevel10k Theme


```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k\n
```

Open the `.zshrc` file and edit the value of the variable ZSH_THEME to setup the Powerlevel10k theme

```console
ZSH_THEME="powerlevel10k/powerlevel10k"
```


Refs:
- https://github.com/romkatv/powerlevel10k#extremely-customizable
- https://gist.github.com/kevin-smets/8568070#powerlevel9k--powerlevel10k


## VS Code config
To make VS Code work with those settings, you'll need to go to settings (CMD + ,) and add or edit the following values:


```
"terminal.integrated.fontFamily": "Meslo LG M for Powerline"
```

Refs:
- https://gist.github.com/kevin-smets/8568070#visual-studio-code-config
