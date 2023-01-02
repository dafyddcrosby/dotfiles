#!/bin/bash
GIT_DIR=$(mktemp -d)
BARE_GIT_DIR=$(mktemp -d)
cd "$GIT_DIR" || exit
git init .
fossil git export . -R "$1" # --mainbranch main
git clone --bare "$GIT_DIR" "$BARE_GIT_DIR"
echo "New bare directory is $BARE_GIT_DIR"
