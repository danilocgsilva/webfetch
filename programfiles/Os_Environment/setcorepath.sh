#!/bin/bash

home=~
configfoldername=webfetch

# Checks if the first mandatory argument was provided.
if [ -z $1 ]; then
    echo Please, provides as the first argument the full path for Core webfetcher.
    exit 1
fi

# Checks if the path provided exists
if [ ! -d $1 ]; then
    echo The provided path does not exists.
    exit 1
fi

if [ ! -f $home/.$configfoldername ] ; then
    mkdir $home/.$configfoldername
fi

echo $1 > $home/.$configfoldername/corepath