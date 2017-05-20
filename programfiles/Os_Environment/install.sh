#!/bin/bash

home=~
configfoldername=webfetch

if [ ! -d $home/.$configfoldername ]; then
    echo There\'s no configuration wwwroot for webfetch.
    echo Run setwwwroot.sh from this utility bundle.
    exit 1
fi
