updateScreenWindowTitles
=========

Make `ssh` and `telnet` more useful in byobu/screen 

Usage:

Save files to `~/bin`. If necessary, create directory first:

    mkdir ~/bin

Make aliases in a dotfile á la

    echo "
    ## Below aliases that hijack 'telnet' and 'ssh' to make 'screen' or 'byobu' update
    ## with hostname of the device you're trying to reach

    alias ssh='~/bin/ss.sh'
    alias telnet='~/bin/telnet.sh'
    ##
    " >> ~/.bashrc

(That is, assuming you are using `bash` - if you're not, you probably already know what to do)

Presto.
