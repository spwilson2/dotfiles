# -*- mode: sh -*-

if [[ $(uname) != Darwin ]]; then
  alias ack="ack-grep"
fi

alias e=$EDITOR
alias gg="git grep -n"
alias git="hub"
alias gpg="gpg2"
alias less="less -R" # display colors correctly
alias sbcl="rlwrap sbcl"
alias lisp="sbcl --noinform"
alias lispi="sbcl -noinform --load"
alias la="ls -la"
alias ll="ls -l"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias n="e ~/Documents/notes"
alias now="date '+%Y-%m-%d %H:%M'"
alias path="echo $PATH | tr ':' '\n'"
alias rss="newsbeuter -q -r -u ~/documents/rss/urls"
alias texclean="rm *.aux *.log *.bbl *.blg *.pdf"
alias tree="tree -C" # add colors
alias unb="tar xjvf"
alias ung="tar xzvf"
alias usage="du -sch"
alias fucking="sudo"

alias be="bundle exec"

alias exelse="exiftool -m -p ~/.exelse/show.fmt"

# Override the mvn command with the colorized one.
alias mvn="mvn-color"
alias mvnci="mvn clean install"

### Aiming for something like platform-independence
if [[ $(uname) == Darwin ]]; then
  alias ls="ls -G -h"
  alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"
  alias nowp="now | pbcopy"
else # Linux!
  alias ls="ls --color -h"
  alias myip="ifconfig eth0 | grep 'inet ' | cut --delimiter=' ' -f12 | sed s/addr://"
  alias generate_rails_tags="rm -f TAGS; ctags-exuberant -a -e -f TAGS --tag-relative -R app lib vendor"
fi

### Package management
if [[ $(uname) == Darwin ]]; then
  alias agi="brew install"
  alias agr="brew rm"
  alias acs="brew search"
  alias agu="brew update && brew upgrade"
else
  alias agi="sudo apt-get install"
  alias agr="sudo apt-get remove"
  alias acs="apt-cache search"
  alias agu="sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade"
fi

alias oports="echo 'User:      Command:   Port:'; echo '----------------------------' ; lsof -i 4 -P -n | grep -i 'listen' | awk '{print \$3, \$1, \$9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -k 3 -n |xargs printf '%-10s %-10s %-10s\n' | uniq"
alias serve="python -m SimpleHTTPServer"
alias kindle="rsync -r -v -L ~/Documents/books/kindle/* /Volumes/Kindle/documents"

### Meta
alias rc="$EDITOR ~/.bashrc"
alias rcs="source ~/.bashrc"
