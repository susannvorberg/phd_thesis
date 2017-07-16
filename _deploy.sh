#!/bin/sh

bash _build.sh
 
#commit and push to github
git add --all *
git commit -m "Update the book" 
git push 
