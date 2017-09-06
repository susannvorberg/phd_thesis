#!/bin/sh

commit_message=$1

bash _build.sh
 
#commit and push to github
git add --all *
git commit -m $commit_message 
git push 
