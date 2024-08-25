#!/usr/bin/env bash

# Change the www-data user and group to ID 1000 so that it is bound on the local machine to user 1000
usermod -u "$UID" www-data
groupmod -g "$GID" www-data

# Start the apache web server
/usr/local/bin/docker-entrypoint.sh apache2-foreground