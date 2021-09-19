#!/bin/bash

# Makes sure that /var/www and /srv/www both exist and that sitefiles live
# at /srv/www and a symlink to the sitefiles exists at /var/www

if [ ! -d "/srv/www" ]; then
    mkdir /srv/www
fi
if [ ! -d "/var/www" ]; then
    mkdir /srv/www
    ln -s /srv/www /var
    else
        if [ ! -L "/var/www" ]; then
            mkdir /tmp/oldwww
            mv /var/www /tmp/oldwww
            ln -s /srv/www /var
            mv /tmp/oldwww /srv/www
        fi
fi

