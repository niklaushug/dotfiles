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
    cat ~/.gitconfig
    

## [n: Node Version Manager](https://github.com/tj/n)

Formula n is listed in formulas.txt.

1. [Avoid sudo](https://github.com/tj/n#installation) by taking ownership of system directories.
2. Install [avn-n](https://github.com/wbyoung/avn-n) to switch automatically versions.

## [jEnv: Java Version Manager](https://www.jenv.be/)

Formula jEnv is listed in formulas.txt. Bash configuration is found in .bash_profile.

See https://developer.bring.com/blog/configuring-jenv-the-right-way/ for configuration. 

## [Bower](https://bower.io/)

Install Bower

    npm install -g bower

# Apps

## Installation
### App Store
* [XCode](https://apps.apple.com/de/app/xcode/id497799835?mt=12)
* [Telefon](https://apps.apple.com/ch/app/telefon/id406825478?mt=12)

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
* [Docker](https://www.docker.com/) docker
* [Dropbox](https://www.dropbox.com/de/downloading) dropbox
* [Evernote](https://evernote.com/intl/de/download) evernote
* [Firefox](https://www.mozilla.org) firefox
* [Geek Tool](https://www.tynsoe.org/v2/geektool) geektool
* [Gimp](https://www.gimp.org/downloads) gimp
* [IStumbler](https://istumbler.net) istumbler
* [Inkscape](https://inkscape.org/de/) inkscape
* [Intellij IDEA](https://www.jetbrains.com/de-de/idea/) intellij-idea
* [Kitematic](https://kitematic.com) kitematic
* [Libre Office](https://www.libreoffice.org) libreoffice
* [Moom](https://manytricks.com/moom/) moom
* [Postman](https://www.postman.com/) postman
* [Scribus](https://www.scribus.net/downloads) scribus
* [Sketch](https://www.sketch.com/) sketch
* [Sourcetree](https://www.sourcetreeapp.com/) sourcetree
* [Spotify](https://www.spotify.com/de/download/other/) spotify
* [Sublime Text](https://www.sublimetext.com) sublime-text
* [The Unarchiver](https://apps.apple.com/ch/app/the-unarchiver/id425424353) the-unarchiver
* [Transmit](https://apps.apple.com/de/app/transmit-5/id1436522307) transmit
* [VLC](https://www.videolan.org/vlc) vlc
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads) virtualbox
* [iStat Menus](https://bjango.com/mac/istatmenus) istat-menus
* [iTerm](https://www.iterm2.com) iterm2
* [rocket.chat](https://rocket.chat/) rocket-chat
* [whatsapp](https://www.whatsapp.com) Whatsapp

### Manually
* [MS Virtual Machine](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms)
* [Office 365](https://www.office.com/)

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
ColorHints,
CSScomb,
CSSLint,
Emmet,
Emmet Css Snippets,
FileDiffs,
GitGutter,
HTML-CSS-JS Prettify,
jQuery,
MarkdownLivePreview,
ReactJS,
SideBarEnhancements,
SublimeLinter-html-tidy,
SublimeLinter-jshint,
SublimeLinter-json,
SublimeLinter-xmllint,
Theme - Monokai Pro,
Trimmer,
TypeScript

### Apple Id
### Mail Accounts


