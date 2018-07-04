<pre>
                                   __      __  _____ __
                              ____/ /___  / /_/ __(_) /__  _____
                             / __  / __ \/ __/ /_/ / / _ \/ ___/
                            / /_/ / /_/ / /_/ __/ / /  __(__  )
                            \__,_/\____/\__/_/ /_/_/\___/____/

</pre>

[![Build Status](https://travis-ci.org/ps1337/Dotfiles.png?branch=master)](https://travis-ci.org/ps1337/Dotfiles)

These dotfiles and all dependencies can be installed automatically using my [Dotfile-tools](https://github.com/BananaFett/Dotfile-tools).

# General dependencies for all distros

General dependencies cover basic software packages, fonts and i3 dependencies.

- Via package manager
	- arandr (i3)
	- blueman ([Polybar](https://github.com/jaagr/polybar))
	- cmake
	- dunst (i3)
	- feh (i3)
	- git
	- i3-wm (i3)
	- lxappearance (i3)
	- nautilus
	- [ranger](https://github.com/ranger/ranger/)
	- rofi (i3)
	- scrot
	- wicd-gtk ([Polybar](https://github.com/jaagr/polybar))
	- xss-lock (i3)
	- zsh

- Via pip
    - i3ipc (i3)
    - pipenv

- Misc
    - Dina font ([Polybar](https://github.com/jaagr/polybar))
    - Font-Awesome ([Polybar](https://github.com/jaagr/polybar))

# General sublime dependencies for all distros

- Via package manager:
    - clang ([EasyClangComplete](https://github.com/niosus/EasyClangComplete))
    - gcc ([SublimeLinter-gcc](https://github.com/SublimeLinter/SublimeLinter-gcc))
- Via pip
    - flake8 ([Anaconda](https://github.com/DamnWidget/anaconda))

# General vim dependencies for all distros

- Via package manager
    - clang ([vim-autoformat](https://github.com/Chiel92/vim-autoformat))

- Via pip
    - ansible-lint ([ale](https://github.com/w0rp/ale))
    - future ([markdown-preview](https://github.com/MikeCoder/markdown-preview.vim))
    - jedi ([YouCompleteMe](https://github.com/Valloric/YouCompleteMe))
    - msgpack-python
    - unidecode ([ultisnips](https://github.com/SirVer/ultisnips.git))
    - yapf ([vim-autoformat](https://github.com/Chiel92/vim-autoformat))

# General ranger dependencies for all distros

- `w3m` (HTML pages and pictures)

# Arch

## General dependencies

- Via package manager
    - chromium
    - perl (cower)
    - python
    - python-pip
    - python2
    - python2-pip
    - termite
    - termite-terminfo
    - xorg-xbacklight
    - xorg-xev
    - xorg-xprop
    - xorg-xrandr

- Via AUR
    - cower
    - network-manager-applet
    - polybar
    - trizen
    - ttf-hack

## Sublime dependencies

- Via package manager
    - jdk9-openjdk ([SublimeLinter-javac](https://github.com/SublimeLinter/SublimeLinter-javac))

- Via AUR
    - sublime-text-dev
    - trizen

## Vim dependencies

- Via package manager
    - ctags ([tagbar](https://github.com/majutsushi/tagbar))
    - neovim

# Debian

## General dependencies

- Via package manager
    - chromium
    - cmake
    - cmake-data
    - fonts-hack-ttf
    - i3
    - libasound2-dev
    - libcairo2-dev
    - libcurl4-openssl-dev
    - libiw-dev
    - libmpdclient-dev
    - libxcb-ewmh-dev
    - libxcb-icccm4-dev
    - libxcb-image0-dev
    - libxcb-randr0-dev
    - libxcb-util0-dev
    - libxcb-xkb-dev
    - libxcb-xrm-dev
    - libxcb1-dev
    - network-manager-gnome
    - pkg-config
    - python-pip
    - python-xcbgen
    - python2.7
    - python3
    - python3-pip
    - update-notifier
    - x11-utils
    - x11-xserver-utils
    - xbacklight
    - xcb-proto
    - zsh-common

- Additional dependencies
    - Playerctl (Installed via `.deb` from [GitHub](https://github.com/acrisci/playerctl/releases))
    - Polybar (Installed from [source](https://github.com/jaagr/polybar)) - Compiling dependencies:
		```
		- cmake
		- cmake-data
		- libasound2-dev
		- libcairo2-dev
		- libcurl4-openssl-dev
		- libiw-dev
		- libmpdclient-dev
		- libxcb-ewmh-dev
		- libxcb-icccm4-dev
		- libxcb-image0-dev
		- libxcb-randr0-dev
		- libxcb-util0-dev
		- libxcb-xkb-dev
		- libxcb-xrm-dev
		- libxcb1-dev
		- pkg-config
		- python-xcbgen
		- xcb-proto
		```

    - Termite (Installed from [source](https://github.com/thestinger/termite))

## Sublime dependencies

- default-jdk ([SublimeLinter-javac](https://github.com/SublimeLinter/SublimeLinter-javac))
- sublime-text package via sublime repository

## Vim dependencies

- Via package manager
    - exuberant-ctags ([tagbar](https://github.com/majutsushi/tagbar))
    - neovim

## Ranger dependencies

- Via package manager
    - `w3m-img`

# Ubuntu

## General dependencies
- Via package manager
    - chromium-browser
    - chromium-browser-l10n
    - chromium-codecs-ffmpeg
    - fonts-hack-ttf
    - i3
    - network-manager-gnome
    - python-pip
    - python2.7
    - python3
    - python3-pip
    - software-properties-common
    - update-notifier
    - x11-utils
    - x11-xserver-utils
    - xbacklight
    - zsh-common

- Additional dependencies
    - Playerctl (Installed via `.deb` from [GitHub](https://github.com/acrisci/playerctl/releases))
    - Polybar (Via [GetDeb](http://www.getdeb.net/app/Polybar))
    - Termite (Install from [source](https://github.com/thestinger/termite))

## Sublime

- sublime-text package via sublime repository
- default-jdk ([SublimeLinter-javac](https://github.com/SublimeLinter/SublimeLinter-javac))

## Vim dependencies

- Via package manager
    - exuberant-ctags ([tagbar](https://github.com/majutsushi/tagbar))
    - neovim ([PPA](https://github.com/neovim/neovim/wiki/Installing-Neovim))

## Ranger dependencies

- Via package manager
    - `w3m-img`

# Sublime plugins
- [Ada](https://packagecontrol.io/packages/Ada)
- [Alignment](https://packagecontrol.io/packages/Alignment)
- [Anaconda](https://packagecontrol.io/packages/Anaconda)
- [ASCII Decorator](https://packagecontrol.io/packages/ASCII%20Decorator)
- [AutoPEP8](https://packagecontrol.io/packages/AutoPEP8)
- [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
- [Dockerfile Syntax Highlighting](https://packagecontrol.io/packages/Dockerfile%20Syntax%20Highlighting)
- [EasyClangComplete](https://packagecontrol.io/packages/EasyClangComplete)
- [Edit Command Palette](https://packagecontrol.io/packages/Edit%20Command%20Palette)
- [Emmet](https://packagecontrol.io/packages/Emmet)
- [FuzzyFileNav](https://packagecontrol.io/packages/FuzzyFileNav)
- [Git](https://packagecontrol.io/packages/Git)
- [Git Commit Message Syntax](https://packagecontrol.io/packages/Git%20Commit%20Message%20Syntax)
- [GitGutter](https://packagecontrol.io/packages/GitGutter)
- [GitStatus](https://packagecontrol.io/packages/GitStatus)
- [HexViewer](https://packagecontrol.io/packages/HexViewer)
- [JavaIME](https://packagecontrol.io/packages/JavaIME)
- [LaTeXTools](https://packagecontrol.io/packages/LaTeXTools)
- [Markdown Preview](https://packagecontrol.io/packages/Markdown%20Preview)
- [MarkdownHighlighting](https://packagecontrol.io/packages/MarkdownHighlighting)
- [Package Control](https://packagecontrol.io/packages/Package%20Control)
- [PackageResourceViewer](https://packagecontrol.io/packages/PackageResourceViewer)
- [Pretty JSON](https://packagecontrol.io/packages/Pretty%20JSON)
- [Pretty YAML](https://packagecontrol.io/packages/Pretty%20YAML)
- [SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)
- [SublimeAStyleFormatter](https://packagecontrol.io/packages/SublimeAStyleFormatter)
- [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter)
- [SublimeLinter-gcc](https://packagecontrol.io/packages/SublimeLinter-gcc)
- [SublimeLinter-javac](https://packagecontrol.io/packages/SublimeLinter-javac)
- [Theme - Flatland](https://packagecontrol.io/packages/Theme%20-%20Flatland)

# Vim plugins
- [ale](https://github.com/w0rp/ale.git)
- [ansible-vim](https://github.com/pearofducks/ansible-vim.git)
- [delimitMate.vim](https://github.com/vim-scripts/delimitMate.vim.git)
- [fzf](https://github.com/junegunn/fzf.git)
- [fzf.vim](https://github.com/junegunn/fzf.vim.git)
- [indentLine](https://github.com/Yggdroot/indentLine.git)
- [markdown-preview.vim](https://github.com/MikeCoder/markdown-preview.vim.git)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter.git)
- [nerdtree](https://github.com/scrooloose/nerdtree.git)
- [tagbar](https://github.com/majutsushi/tagbar.git)
- [ultisnips](https://github.com/SirVer/ultisnips.git)
- [undotree](https://github.com/mbbill/undotree.git)
- [vim-airline](https://github.com/vim-airline/vim-airline.git)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes.git)
- [vim-ansible-yaml](https://github.com/chase/vim-ansible-yaml.git)
- [vim-autoformat](https://github.com/Chiel92/vim-autoformat.git)
- [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace.git)
- [vim-easy-align](https://github.com/junegunn/vim-easy-align.git)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion.git)
- [vim-fugitive](https://github.com/tpope/vim-fugitive.git)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter.git)
- [vim-json](https://github.com/elzr/vim-json.git)
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
- [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs.git)
- [vim-snippets](https://github.com/honza/vim-snippets.git)
- [vimtex](https://github.com/lervag/vimtex.git)
- [Vundle.vim](https://github.com/gmarik/Vundle.vim.git)
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe.git)

# Credits
- [Jess Frazelle](https://github.com/jessfraz)
- [Michael Carlberg](https://github.com/jaagr)

# Additional Notes

## General Setup

### Browser Extensions

- [uMatrix](https://chrome.google.com/webstore/detail/umatrix/ogfcmafjalglgifnmanfmnieipoejdcf?hl=de)
- [Vimium](https://github.com/philc/vimium)

## Setting up Vim

- `YouCompleteMe`: Make sure ~/.vim/bundle/YouCompleteMe/install.py has been run using `python3`.
- Run `:VundleUpdate`, `:VundleInstall`, `:UpdateRemotePlugins` and `:checkhealth`.
