#!/usr/bin/env bash
 
# If running in screen, set trap to fall back to current hostname
# If you want it to blank or be something static, replace ${HOSTNAME} :-)
defaultTitle=${HOSTNAME}

if [ -n $STY ] ; then
  trap 'echo -n -e "\033k${defaultTitle}\033\\"' 0 1 2 15
  echo -n -e "\033k$1\033\\"
fi
/usr/bin/env ssh $*
