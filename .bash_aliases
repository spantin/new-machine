

# bash aliases
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias bigfiles='sudo find ./ -type f -printf "%s %p\n" | sort -nr | head -10'
alias gg='function _gg(){
  if [[ $# -eq 1 ]];
  then
    grep -iRn "$1" ./;
  elif [[ $# -eq 2 ]];
  then
    grep -iRn "$1" --include="$2" ./;
  fi
};
_gg'
alias hh="less ~/.bash_history"
alias l='ls -lF'
alias la='ls -A'
alias ll='ls -alFh'
alias das='find . -name \*.sw[p,o,n,m] -type f -exec rm -f {} \;'


# git aliases
alias glo='git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short --no-merges'
alias grh="git reset --hard HEAD"
alias grl='git reflog --format="%C(auto)%h %<|(17)%gd %C(blue)%ci%C(reset) %s"'
alias gs="git status"
alias log5='git log --oneline -n 5'
alias mergebeta='git checkout master; git pull; git branch -D beta; git checkout beta; git merge master --no-edit; git push; git checkout master; git branch -D beta'
alias ro='git pull --rebase'
alias rob='git fetch; git rebase origin/beta'
alias rom='git fetch; git rebase origin/master'

# logging aliases
alias lf='tail -f ~/pestroutes/log/*.log'
alias ef='tail -f ~/logs/apacheError/*.log'
alias ea='tail -f ~/logs/apacheAccess/*.log'
alias terror='tail -f ~/pestroutes/log/fatalError.log ~/pestroutes/log/mysql_errors.log'

# debugger aliases
alias debug='cp ~/PestPortals/.htaccess_profiling ~/PestPortals/.htaccess; cp ~/pestroutes/.htaccess_profiling ~/pestroutes/.htaccess; cp ~/slavedemo/pestroutes/.htaccess_profiling ~/slavedemo/pestroutes/.htaccess'
alias undebug='(cd ~/PestPortals && git checkout -f .htaccess); (cd ~/slavedemo/pestroutes && git checkout -f .htaccess); (cd ~/pestroutes && git checkout -f .htaccess)'
