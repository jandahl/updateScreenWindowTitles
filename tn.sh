#!/usr/bin/env bash
 
# If running in screen, set trap to fall back to current hostname
if [ -n $STY ] ; then
  trap 'echo -n -e "\033k${HOSTNAME}\033\\"' 0 1 2 15
  echo -n -e "\033k$1\033\\"
fi
/usr/bin/env telnet $*
