date
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't wait for job termination notification
set -o notify

## Aliases for Vagrant
alias va=vagrant
alias vin='vagrant init'
alias vup='vagrant up'
alias vash='vagrant ssh'
alias vrel='vagrant reload'
alias vsus="vagrant suspend"
alias valt='vagrant halt'
alias vdes='vagrant destroy'

## History

# Time format
export HISTTIMEFORMAT="%F %T "

# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"

# Don't duplicate lines
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:ls -ltr:history'

## Folders in Windows...
export APPS_DIR="/cygdrive/c/Apps"
export JAVA_HOME="$APPS_DIR/Java/jdk1.8.0_11"
export SSH_DIR="/cygdrive/c/Users/$USER/Documents/SSH_Keys"
export DESKTOP="/cygdrive/c/Users/$USER/Desktop"
export DOWNLOADS="/cygdrive/c/Users/$USER/Downloads"
export DROPBOX="/cygdrive/c/Users/$USER/Dropbox"
export DOCUMENTS="/cygdrive/c/Users/$USER/Documents"
export WORKSPACE="/cygdrive/c/Users/$USER/workspace"

## Path...
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$APPS_DIR/nodejs

## Prompt
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n> "

## Aliases...

alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias h=history
alias s=source
alias nsl=nslookup
alias path='echo $PATH'
alias ppath="echo $PATH | sed 's/\:/\n/g' | sort"
alias vi=`which vim`
alias cibash="ci -l ~/.bashrc"
alias vibash="vi ~/.bashrc"
alias rebash="source ~/.bashrc"
alias tmp="cd /tmp"
alias apps="cd $APPS_DIR"
alias www="cd $APPS_DIR/xampp/htdocs"
alias lash="history | egrep -v lass?h | grep ssh"
alias desktop="cd $DESKTOP"
alias downloads="cd $DOWNLOADS"
alias dropbox="cd $DROPBOX"
alias workspace="cd $WORKSPACE"
alias ping="/cygdrive/c/Windows/system32/PING -t"

## SSH Aliases...
# moved to .bash_alisaes

## Functions...

# search history
function hist() { history | grep "$@"; 

# check JSON file
function json() { cat "$@" | /usr/bin/python -m json.tool ;}

# curl a URL and report the number of redirects, HTTP status, and final endpoint
function ecurl() { curl -sLI -o /dev/null -w "%{num_redirects} %{http_code} %{url_effective}\\n" "$@" ; }

# curl a URL and report the HTTP status for each redirect (dosen't print the endpoint)
function vcurl() { curl -sLI "$@" | grep HTTP; }

