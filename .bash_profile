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

# Detect which `ls` flavor is in use (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.aliases)
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
    export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
    colorflag="-G"
    export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi

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
PS1="\[\033[0;31m\]\A \[\033[1;31m\]\W/ \[\033[1;37m\]" # hh:mm, current directory

# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Add tab completion for many Bash commands (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git` (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards (copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile)
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

