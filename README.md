# Purpose
Collection of configuration files and scripts to set up an Apple computer.


# Console

## Bash
Set environment variables and define aliases by copying default .bash_profile.

    cp .bash_profile ~/.bash_profile

## [Brew](https://brew.sh)

Install Brew

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install Formulas

    brew install $(cat formulas.txt)

## [Git](https://git-scm.com/)
Set Git environment

    git config --global user.email biz@niklaushug.ch
    git config --global user.name "Niklaus Hug"

Check Git environment

    git config --list

## [nvm](https://github.com/nvm-sh/nvm)

Formula jEnv is listed in formulas.txt. Bash configuration is found in .bash_profile.


## [jEnv](https://www.jenv.be/)

Formula jEnv is listed in formulas.txt. Bash configuration is found in .bash_profile.

Create folders for jEnv

    mkdir ~/.jenv && mkdir ~/.jenv/versions

Add Java versions to jEnv

    jenv add /Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home/
    jenv add /Library/Java/JavaVirtualMachines/openjdk-12.0.2.jdk/Contents/Home/

Check added Java versions

    jenv versions

## [Bower](https://bower.io/)

Install Bower

    npm install -g bower

# Apps

## Installation
### App Store
* [XCode](https://apps.apple.com/de/app/xcode/id497799835?mt=12)

### Brew
Install all apps in one go.

    brew cask install $(cat casks.txt)

All apps are listed in casks.txt.

* [Alfred](https://www.alfredapp.com/) alfred
* [AppCleaner](https://www.heise.de/download/product/appcleaner-58032) appcleaner
* [Better Touch Tool](https://folivora.ai/downloads) bettertouchtool
* [Caffeine](http://lightheadsw.com/caffeine/) caffeine
* [Chrome](https://www.google.com/intl/de/chrome) google-chrome
* [Dashlane](https://www.dashlane.com/de/download) dashlane
* [Dropbox](https://www.dropbox.com/de/downloading) dropbox
* [Evernote](https://evernote.com/intl/de/download) evernote
* [Firefox](https://www.mozilla.org) firefox
* [Geek Tool](https://www.tynsoe.org/v2/geektool) geektool
* [Gimp](https://www.gimp.org/downloads) gimp
* [iStat Menus](Download: https://bjango.com/mac/istatmenus) istat-menus
* [IStumbler](Download: https://istumbler.net) istumbler
* [iTerm](https://www.iterm2.com) iterm2
* [Libre Office](https://www.libreoffice.org) libreoffice
* [Moom](https://manytricks.com/moom/) moom
* [Scribus](https://www.scribus.net/downloads) scribus
* [Spotify](https://www.spotify.com/de/download/other/) spotify
* [Sublime Text](https://www.sublimetext.com) sublime-text
* [The Unarchiver](https://apps.apple.com/ch/app/the-unarchiver/id425424353) the-unarchiver
* [Transmit](https://apps.apple.com/de/app/transmit-5/id1436522307) transmit
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads) virtualbox
* [VLC](https://www.videolan.org/vlc) vlc

### Manually
* [MS Virtual Machine](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms)


## Configure apps

### Alfred Open
    Alfred Preferences => /Advanced => Set syncing preferences folder: ~/Dropbox/Apps Config/Alfred

### Better Touch Tool
    Open: Better Touch Tool Preferences => /Advanced Settings/Sync => Check: Enable Dropbox Sync

### Geek Tool
    $ cd /projects/prod/dotfiles/desktop
    Drag'n'drop: Display Image.glet, Display Quote.glet, Load Image and Quote.glet

### Moom
    $ cp ~/Library/Preferences/com.manytricks.Moom.plist ~/Dropbox/Apps Config/Moom/





## Configuration
### Sublime
Press: Cmd & Shift & P  => Open: Package Control: Advanced Install Package => Enter:
Autoprefixer,
Babel,
Color Highlighter,
CSScomb,
CSSLint,
ColorHints,
Emmet Css Snippets,
Emmet,
Emmet,
FileDiffs,
GitGutter,
HTML-CSS-JS Prettify,
jQuery,
MarkdownLivePreview,
SideBarEnhancements,
SublimeLinter-html-tidy,
SublimeLinter-jshint,
SublimeLinter-json,
SublimeLinter-xmllint,
Theme - Monokai Pro,
Trimmer,
TypeScript,

### Apple Id
### Mail Accounts


