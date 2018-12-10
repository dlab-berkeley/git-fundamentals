#!/bin/bash

###
### The purpose of this script in the Git Fundamentals workshop is to allow
### everyone to quickly get working with git in LESS THAN 5 MINUTES (!!!) and to
### provide a way to experiment with "real" collaborative workflows (between
### laptop and cloud).
###
### This simple script is meant to be used with Google Cloud Shell (GCS)
### It makes use of the Rocker project's RStudio Docker image:
###    https://github.com/rocker-org/rocker-versioned/blob/master/rstudio/README.md
### And allows using RStudio in a secure way ONLY accessible through the
### GCS Web Preview (not available for remote access directly!!!)
###

read -s -p 'Make up a throwaway password: ' PASS; echo; docker rm -f rstudio 2>/dev/null >/dev/null; docker run -v $(pwd):/home/rstudio --name rstudio -d -p 8080:8787 -e PASSWORD="$PASS" rocker/rstudio > /dev/null
echo "Now click on the 'Web Preview' button above in Google Cloud Shell menubar and select 'Preview on Port 8080'."
echo "A new browser tab will open and you can log in with the password you typed"
echo "username: rstudio"
echo "https://ssh.cloud.google.com/devshell/proxy?authuser=0&port=8080"
