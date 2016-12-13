#!/usr/bin/env bash
#ARGS: project_name blueprint_file commit_id
SRC_DIR=`pwd`
cd "$(dirname "$0")"

mkdir -p $1
aglio --theme-full-width -i "$SRC_DIR/$2" -o "$1/index.html"

git config --global user.name "CircleCI"
git config --global user.email "root@circleci.com"
git add "$1/index.html"
git commit -m "Update docs for $1 commit $3"
git push origin master