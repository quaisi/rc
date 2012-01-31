#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias python='python2.7'
PS1='[\u@\h \W]\$ '

if [ "$TERM" = "screen" ]; then
  screen_set_window_title () {
    local HPWD="$PWD"
    case $HPWD in
      $HOME) HPWD="~";;


      ## long name option:
      # $HOME/*) HPWD="~${HPWD#$HOME}";;


      ## short name option:
      *) HPWD=`basename "$HPWD"`;;


    esac
    printf '\ek%s\e\\' "$HPWD"
  }
  PROMPT_COMMAND="screen_set_window_title; $PROMPT_COMMAND"
fi
