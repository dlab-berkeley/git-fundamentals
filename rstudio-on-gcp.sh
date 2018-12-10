#!/bin/bash

read -s -p 'Make up a throwaway password: ' PASS; docker rm -f rstudio 2>/dev/null; docker run -v $(pwd):/home/rstudio --name rstudio -d -p 8080:8787 -e PASSWORD="$PASS" rocker/rstudio
echo "Now click on the 'Web Preview' button above in Google Cloud Shell menubar and select 'Preview on Port 8080'."
echo "A new browser tab will open and you can log in with the password you typed"
echo "username: rstudio"
