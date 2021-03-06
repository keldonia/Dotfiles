export PATH=/Users/brianlambert/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval "$(rbenv init -)"

  ```
    export PATH="$HOME/.rbenv/bin:$PATH"
    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  ```

  PRETTY_LOG="log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.lg "${PRETTY_LOG}"

###############################################################################
# Bash

PS1=' $PWD
==> '
export CLICOLOR='yes'
export LSCOLORS=ExFxCxDxBxegedabagacad

HISTSIZE=10000
HISTFILESIZE=

set -o noclobber

alias ll="ls -lAh"
alias l="ll"
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias -- -="cd -"

alias reload=".~/.bash_profile"
alias r='reload'
alias cx='chmod u+x'
alias profile='atom ~/.bash_profile'
alias c="clear"
alias mkr='mkdir'
alias uz="unzip"
alias zip="zip -r"

alias die="kill_process"
alias diehard="really_kill_process"

alias sb="subl ."
alias at="atom ."

mkcd () { mkdir -p "$@" && cd "$_"; }
md () { mkdir -p "$@" && cd "$_"; }
uzcd () { unzip "$@" && cd "$_"; }
h () { history | grep "$@"; }

ch() {
  history | awk '{ count[$2]++ } END { for (cmd in count) { print count[cmd] " " cmd } }' | sort -rn | head -20
}

###############################################################################
# Ruby

alias rb="ruby"
alias p="pry"

alias bi="bundle install"
alias bu="bundle update"
alias be="bundle exec"
alias bers="be rspec spec"

bers/() { bundle exec rspec spec/"$_"; }

###############################################################################
# Bash - Jumps

alias dk="cd ~/desktop"
alias gd="cd ~/downloads"
alias gdp="cd ~/dropbox"
alias ggd="cd Google\ Drive/"
alias strtst="cd ~/Test"
alias dotfiles="cd ~/dropbox/dotfiles"

###############################################################################
# Bash - Stupid Shit

alias telnetstarwars="telnet towel.blinkenlights.nl"

###############################################################################
# Git

alias g="git"
alias gti="git"

alias gi="git init"
alias ga="git add"
alias gaa="git add -A"
alias gs="git status"
alias gds="git diff --staged"
alias gl="git log"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gp="git push -u origin master"
alias gacan="git add -A && git commit --ammend --no-edit"
alias gacm="git add -A && git commit -m"
alias gpull="git pull origin"
alias gpush="git push -u origin"
alias gco="git checkout"
alias gitpp='git pull && git push'

gac() { git add -A && git commit -m "$@"; }

alias gitpp='git pull && git push'
alias gitppr="git pull --rebase && git push"

alias gclean="git clean -df"
alias clean="gclean"

alias gph="git push heroku master"

alias gback="git log -n 1 --pretty='%H' > ../repo_backup.txt"
alias grename="git filter-branch -f --env-filter "GIT_AUTHOR_NAME='keldonia'; GIT_AUTHOR_EMAIL='keldoniaskylar@gmail.com'; GIT_COMMITER_NAME='keldonia'; GIT_COMMITTER_EMAIL='keldonia@gmail.com';""

alias gbdel="rm -R ../repo_backup.txt"

###############################################################################
#Rails

 alias rc="rails c"
 alias rn="rails new"
 alias rs="rails s"

 alias rgm="rails generate migration"
 alias rake="buddle exec rake"

 alias rdbc="rails db:console"
 alias rdbm='bundle exec rake db:migrate'
 alias rdbr="rake db:reset"
 alias rdbsee="rails db:seed"
 alias rdbset="rails db:setup"

 ###############################################################################
 #PostgresSQL

 PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
source '/Users/brianlambert/Documents/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/brianlambert/Documents/google-cloud-sdk/completion.bash.inc'
