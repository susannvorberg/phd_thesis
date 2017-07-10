#!/bin/sh

bash _deploy.sh
 
#commit and push to github
git add --all *
git commit -m "Update the book" 
git push 
