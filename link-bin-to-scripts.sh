#!/bin/bash

if [ "$#" -ne 1 ]; then 
    echo "Incorrect format. Correct format: link-bin-to-scripts USER"
    exit 1
fi

USER_HOME="/home/$1"

if [ ! -d "$USER_HOME" ]; then
    echo "Invalid user. Aborting."
    exit 1
fi

ALL_SCRIPTS=$( find $USER_HOME/scripts/ -name "*.sh" )
for i in $ALL_SCRIPTS; do
    ln -s "$i" /bin
done
