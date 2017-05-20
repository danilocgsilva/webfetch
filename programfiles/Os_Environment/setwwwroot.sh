#!/bin/bash

home=~
configfoldername=webfetch

if [ -z $1 ]; then
    echo Please, provides the web root.
    exit 1
fi

if [ ! -f $home/.$configfoldername ] ; then
    mkdir $home/.$configfoldername
fi

echo $1 > $home/.$configfoldername/wwwroot
