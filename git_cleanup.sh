#!/bin/bash
# Tidy up git branches which have been merged into master

current_branch=$(git branch | grep \* | cut -d ' ' -f2)
if [[ $current_branch != master ]]; then
        echo "Switching to master branch"
        git checkout master
	git pull
fi

branches=$(git branch --merged=master | grep -v master)

if [[ $branches ]]; then
	echo -e "Cleaning up branches\n $branches"
        git branch -d $branches
else
	echo "No branches to clean"
fi
git fetch --prune
echo "Current branches:"
git branch
