#!/bin/bash
for b in `git branch |grep -v bzr` ; do
    git checkout $b
    if [ $? -ne 0 ] ; then
        echo "Error changing to branch $b"
        exit 1
    fi

    ~/src/github/mixxx-conversion-stuff/git-filter-branch-command-committers.sh
    if [ $? -ne 0 ] ; then
        echo "error rewriting committers"
        exit 1
    fi
done
