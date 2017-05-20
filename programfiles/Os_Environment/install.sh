#!/bin/bash

set -e

home=~
configfoldername=webfetch

# Check for wwwroot condiguration
if [ ! -f $home/.$configfoldername/wwwroot ]; then
    echo There\'s no configuration wwwroot for webfetch.
    echo Run setwwwroot.sh from this utility bundle.
    exit 1
fi

# Check if the setted wwwroot exists. It not, maybe it is outdated.
wwwroot=$(cat $home/.$configfoldername/wwwroot | sed -n 1p)
if [ ! -d $wwwroot ]; then
    echo There\'s nothing in the setted wwwroot.
    echo Update the $home/.$configfoldername/wwwroot to the current wwwroot or run the setwwwroot.sh from this utility.
    exit 1
fi

# Check for core path condiguration
if [ ! -f $home/.$configfoldername/corepath ]; then
    echo There\'s no configuration for core path webfetch.
    echo Run setcorepath.sh from this utility bundle.
    exit 1
fi

 # Check if the setted corepath exists. It not, maybe it is outdated.
 corepath=$(cat $home/.$configfoldername/corepath | sed -n 1p)
 if [ ! -d $corepath ]; then
    echo There\'s nothing in the setted corepath.
    echo Update the $home/.$configfoldername/corepath to the current corepath or run the setcorepath.sh from this utility.
    exit 1
fi

if [ ! -d $wwwroot/webfetch ]; then
    mkdir $wwwroot/webfetch
fi

cp -r $corepath/* $wwwroot/webfetch/
