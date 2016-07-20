#!/bin/bash
#use after completing changes to Jekyll site

if [ $# -lt 1 ]
then
  echo "Usage: `basename $0` message"
  echo "Returns: Pushes current contents of master branch and gh-pages branch to GitHub."
  exit 65
fi

MESSAGE=$1
git add .
git commit -m $MESSAGE
cd _site
git add .
git commit -m $MESSAGE
cd ..
git status
