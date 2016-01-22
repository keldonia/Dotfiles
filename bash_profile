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
mkcd () { mkdir -p "$@" && cd "$_"; }
md () { mkdir -p "$@" && cd "$_"; }
h () { history | grep "$@"; }

ch() {
  history | awk '{ count[$2]++ } END { for (cmd in count) { print count[cmd] " " cmd } }' | sort -rn | head -20
}

###############################################################################
# Bash - jumps
alias dk="cd ~/desktop"
alias gd="cd ~/downloads"
alias gdp="cd ~/dropbox"
alias ggd="cd Google\ Drive/"
alias aa="cd ~/dropbox/appacademy"
alias aaa="cd ~/dropbox/appacademy/assessments/assessment-prep-master"
alias sb="subl ."
alias at="atom ."
alias die="kill_process"
alias diehard="really_kill_process"


###############################################################################
# Bash - Stupid Shit
alias telnetstarwars="telnet towel.blinkenlights.nl"

###############################################################################
# Git
alias g="git"
alias gti="git"
alias g a="git add"
alias gaa="git add -A"
alias d="git diff"
alias ds="git diff --staged"
alias s="git status"
alias gpu="git push -u origin master"
alias gc="git commit -m"
alias gs="git status"
alias dl="git log"
alias gcam="git commit -am"
alias gitpp='git pull && git push'
alias gitppr="git pull --rebase && git push"
alias gclean="git clean -df"
alias clean="gclean"
alias gph="git push heroku master"

###############################################################################
#Rails

 alias bi="bundle install"
 alias bu="bundle update"
 alias be="bundle exec"
 alias bers="be rspec spec"
 alias rs="rails s"
 alias rdbm='bundle exec rake db:migrate'
 alias rake="buddle exec rake"
 alias rm="rails c"




 ###############################################################################
 #PostgresSQL

 PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
