#!/bin/bash -ex
git checkout master
rsync -acP --delete --exclude=".*" --exclude-from=.gitignore _site/ .
