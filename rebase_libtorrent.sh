#!/bin/bash
if [ -d ".git" ]; then
    svn2git --rebase -v
else
    svn2git ${LIBTORRENT_SVN} -v --authors /authors.txt
fi
