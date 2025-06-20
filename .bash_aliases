### ALIASES ###

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias ..='c ..'
c() { cd "$@" && ls; }
zp() { pdfcrop "$@" "$@" && zathura "$@"; }

alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

#alias nl='c /home/jack/Documents/Programming/Computer\ Science\ Coursework/LaTeX'
#alias ns='c /home/jack/Documents/Programming/Computer\ Science\ Coursework/src'
#alias ne='nl; evince Visualising\ the\ Riemann\ Hypothesis.pdf &'
#alias nf='nl; zathura Visualising\ the\ Riemann\ Hypothesis.pdf &'
#lias nn='nl; n -c NeoTexOn Visualising\ the\ Riemann\ Hypothesis.tex'
#alias np='c /home/jack/Documents/Programming/Computer\ Science\ Coursework/Prototypes'
#alias nc='nl ; pdflatex Visualising\ the\ Riemann\ Hypothesis.tex ; biber Visualising\ the\ Riemann\ Hypothesis ; pdflatex Visualising\ the\ Riemann\ Hypothesis.tex'

alias jvim-sync='cp -R ~/.config/nvim/. ~/Documents/Github/jvim'

alias myip="curl ipinfo.io/ip"
# alias cp="cp -v"                          # confirm before overwriting something
alias mv='mv -v'
# alias rm='rm -v'
alias mkdir='mkdir -pv'
alias sdn='doas shutdown -h now'
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
# alias np='nano -w PKGBUILD'
alias n='nvim'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias s='startx'
alias more=less
# alias sudo=doas
# alias pls='doas !!'
# alias untar='tar -zxvf'
alias sha='shassum -a 256'

alias cls='clear && echo'
alias pls=doas
alias neofetch='neofetch --source ~/.config/neofetch/ascii.txt'
alias fetch='cls ; neofetch'
# alias dashboard='. /home/jack/.scripts/eww/launch_dashboard'
alias matlab='matlab -nodisplay -nosplash'
alias feh='feh -B black'
alias con='c ~/Documents/Control && matlab'
# alias snip='~/.scripts/snip.sh'
alias kb='setxkbmap gb -option altwin:swap_alt_win'
alias altwin='setxkbmap -option altwin:swap_alt_win'
alias night='sudo xbacklight -set 0.01 && redshift -PO 1200'
alias day='sudo xbacklight -set 100 && redshift -x'
alias bl='sudo xbacklight -set'
