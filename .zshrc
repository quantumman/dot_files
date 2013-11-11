# history
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt share_history
setopt hist_ignore_dups

# key-binding
bindkey -e

zstyle :compinstall filename '/Users/quantumman/.zshrc'

# completion
autoload -Uz compinit
compinit

# VCS
autoload -Uz vcs_info
precmd() {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    psvar[1]=$vcs_info_msg_0_
}

PROMPT=$'%2F%n@%m:%f %3F%~%f%1F%1v%f\n$%  '

EMACSCLIENT=/usr/local/bin/emacsclient

setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
setopt nolistbeep

alias ls="/usr/local/bin/ls -F --color"
#alias emacs="open -a Emacs.app"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias ps2="ssh -X -l syoudai -p 10002 simulate.u-aizu.ac.jp"
#alias ghc="ghc -optc-m32 -opta-m32 -optl-m32"
alias javac="LC_ALL=C javac -J-Dfile.encoding=utf8"
alias ruby="/opt/local/bin/ruby1.9"
alias gem="/opt/local/bin/gem1.9"
alias rails="/opt/local/bin/rails"
alias rake="/opt/local/bin/rake1.9"
alias es="open -a /Applications/Emacs.app"
alias ec=/usr/local/bin/emacsclient
alias gti="git"
alias g="git"
alias hasktags-r="find . -type f -name \*.\*hs -print0 | xargs -0 hasktags -e"
alias gs="git status"
alias cabal=~/.cabal/bin/cabal
