#!/bin/bash
git config --global user.name "codeguru"
git config --global user.email codguru@users.sourceforge.net
git config --global core.editor emacs

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual "!gitk&"
