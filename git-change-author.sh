#!/bin/sh

git filter-branch --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "LibGuest08@LBP-NW0345QZMH1.boisestate.edu" ]
then
    cn="codeguru"
    cm="codeugur@users.sourceforge.net"
fi
if [ "$GIT_AUTHOR_EMAIL" = "LibGuest08@LBP-NW0345QZMH1.boisestate.edu" ]
then
    an="codeguru"
    am="codeugur@users.sourceforge.net"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
