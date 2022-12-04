#!/bin/sh
#
#
#       ALIASE
#
#

#DONT USE SUDO IN ALIAS CMDs !!!

alias u+x='chmod u+x'
#alias c='clear'

#ls aliases

#ls replaced by exa
alias l='exa --icons'

#use long lisiting format
alias lt='l --tree --level=4 --git-ignore'
alias la='l -la'
alias lat='la --tree --level=4 --git-ignore'
alias ll='l -l'
alias llt='ll --tree --level=4 --git-ignore'
alias lla='l -lia'
alias llat='lla --tree --level=4 --git-ignore'

#dir
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

#cat
alias cat='bat -p'

#cd aliases
alias cd-='cd -'
alias ..='cd..'
alias cd..='cd ..'
alias ...='cd ../../..'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'

#grep
alias grep='grep --color=auto'

#calculator with math support
alias bc='bc -l'

#mkdir
#alias mkdir='mkdir -pv'
alias mkdir='mkdir -p'

#history
alias h='history'

#jobs
alias j='jobs -l'

#diverse commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

#set lvim as default
alias vi='lvim'
alias iv='vi'
alias v='vi'
alias lv='lvim'
alias nv='nvim'

# Stop after sending count ECHO_REQUEST packets #
#alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

# show open ports
alias ports='netstat -tulanp'

## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

#continued wget
alias wget='wget -c'

alias shrinkPDF='\gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf'
alias em='emacs'

#set default editor (debian/ubuntu 2016, you need root priviliges))
alias set-editor='update-alternatives --config editor'

#diff
alias diff='colordiff'

#pdf viewer (evince)
alias pdf='evince'

alias code='code-insiders'
alias digibib='wine .wine/drive_c/Program\ Files\ \(x86\)/Digitale\ Bibliothek\ 5/Digibib5.exe'

alias lock='i3quit.sh lock'
alias logout='i3quit.sh logout'
alias shutdown='sudo shutdown -hP now'

alias fzf='fzf-tmux'

alias locate='plocate'

# git
alias g='git'
alias gst='git status'
alias gdi='git diff'
alias gad='git add'
alias gco='git commit'
alias gcov='git commit -v'
alias glo='git log'
alias gloo='git log --oneline'
alias gcl='git clone'
alias gpu='git push'
alias gpuo='git push origin'
alias gfe='git fetch'
alias gfeo='git fetch origin'
alias gme='git merge'
alias gsw='git switch'

# config command to manage dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
