#!/bin/bash
for b in `git branch |grep -v bzr` ; do
    git checkout $b
    if [ $? -ne 0 ] ; then
        echo "Error changing to branch $b"
        exit 1
    fi
    
    ~/src/github/mixxx-conversion-stuff/git-filter-branch-command.sh
    if [ $? -ne 0 ] ; then
        echo "error rewriting authors"
        exit 1
    fi
done
