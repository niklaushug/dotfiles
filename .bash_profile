export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# java by jenv (http://www.jenv.be/)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
export JAVA_HOME;

# app shortcuts
alias acro="open -a 'Adobe Acrobat Pro.app'"
alias phot="open -a 'Adobe Photoshop CC 2017'"
alias inde="open -a 'Adobe InDesign CC 2017'"
alias illu="open -a 'Adobe Illustrator'"
alias fire="open -a 'Firefox.app'"
alias chro="open -a 'Google Chrome.app'"
alias oper="open -a 'Opera.app'"
alias prev="open -a 'Preview.app'"
alias safa="open -a 'Safari.app'"
alias subl="open -a 'Sublime Text.app'"

# directory shortcuts
alias cdt="cd ~/projects/test"
alias cdp="cd ~/projects/prod"
alias cddown="cd ~/Downloads"
alias cddesk="cd ~/Desktop"
alias ~="cd ~"
up(){ cd $(printf '../%.s' $(seq 1 $1)); }  # traverse up in directory by `up 3`

# git shortcuts
alias gita="git add -A"
alias gitb="git branch"
alias gitc="git checkout"
alias gitd="git diff"
alias gitdc="git diff --cached"
alias gitl="git log"
alias gitls="git log --pretty=format:'%h %s (%an)'"
alias gitp="git pull"
alias gitra="git rebase --abort"
alias gitrc="git rebase --continue"
alias gitrs="git rebase --skip"
alias gits="git status"

# ls colors for mac
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ls shortcuts
alias lsc="ls -AF ${colorflag}" # compact
alias lsn="ls -alF ${colorflag}" # sorted by name
alias lss="ls -alSF ${colorflag}" # sorted by size
alias lst="ls -altF ${colorflag}" # sorted by time
alias lsd="ls -lF | grep --color=never '^d'" # only directories

# grep - enable colored output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.aliases)
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# django shortcuts
alias vv="source ./venv/bin/activate"
alias rr="./manage.py runserver"

# mysql agent shortcuts
alias mysqlstart="lunchy start mysql"
alias mysqlstop="lunchy stop mysql"
alias mysqlstatus="lunchy status mysql"

# postgres agent settings
export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost

# postgres agent shortcuts
alias psqlstart='brew services start postgresql93'
alias psqlstop='brew services stop postgresql93'
alias psqlstatus='pg_ctl status'

# apache agent shortcuts
alias apachestart='lunchy start homebrew.mxcl.httpd22'
alias apachestop='lunchy stop homebrew.mxcl.httpd22'
alias apachestatus='lunchy status homebrew.mxcl.httpd22'

# shell prompt
#PS1='\u@\h:\w/ ' # username, host, current directory
PS1="\[\033[0;32m\]\A \[\033[1;36m\]\W/ \[\033[1;37m\]" # hh:mm, current directory

# Add tab completion for many Bash commands (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for git (bash_completion was installed with brew)
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Start nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Chrome for Nick.js (Error: Could not start chrome: Error: spawn google-chrome-unstable ENOENT - https://github.com/phantombuster/nickjs/issues/5)
export CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

