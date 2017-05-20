#!/bin/bash

home=~
configfilename=webfetch

if [ -z $1 ]; then
    echo Please, provides the web root.
    exit 1
fi

if [ ! -f $home/.$configfilename ] ; then
    mkdir $home/.$configfilename
fi

echo $1 > $home/.$configfilename/wwwroot
