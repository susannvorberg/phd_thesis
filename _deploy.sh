#!/bin/sh

commit_message=$1

bash _build.sh
 
#commit and push to github
git add --all *
git add -f docs/PhD_thesis_Susann_Vorberg.pdf
git commit -m $commit_message 
git push 
