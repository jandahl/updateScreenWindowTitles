updateScreenWindowTitles
=========

Make `ssh` and `telnet` more useful in [`GNU screen`](http://www.gnu.org/software/screen/ "GNU Screen project home page")/[`byobu`](https://help.ubuntu.com/10.04/serverguide/byobu.html "Ubuntu documentation of byobu"). The scripts rely on [`$STY`](http://www.gnu.org/software/screen/manual/html_node/Environment.html "$STY environment variable") being set in the pseudoterminal.

Usage:

Save files to `~/bin`. If necessary, create directory first:

    mkdir ~/bin

Make aliases in a dotfile á la

    echo "
    ## Below aliases that hijack 'telnet' and 'ssh' to make 'screen' or 'byobu' update
    ## with hostname of the device you're trying to reach

    alias ssh='~/bin/ss.sh'
    alias telnet='~/bin/tn.sh'
    ##
    " >> ~/.bashrc

(That is, assuming you are using `bash` - if you're not, you probably already know what to do)

Presto.

Note: If they don't want to run try setting their Executable bits:

    chmod +x ~/bin/ss.sh ~/bin/tn.sh
