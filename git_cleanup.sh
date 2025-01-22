#!/bin/bash
# Tidy up git branches which have been merged into master

default_branch=$(git rev-parse --abbrev-ref origin/HEAD | cut -c8-)
current_branch=$(git branch | grep \* | cut -d ' ' -f2)
if [[ $current_branch != $default_branch ]]; then
        echo "Switching to $default_branch branch"
        git checkout $default_branch
	git pull
fi

branches=$(git branch --merged=$default_branch | grep -v $default_branch)

if [[ $branches ]]; then
	echo -e "Cleaning up branches\n $branches"
        git branch -d $branches
else
	echo "No branches to clean"
fi
git fetch --prune
echo "Current branches:"
git branch
