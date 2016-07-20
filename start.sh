#!/bin/bash
#run before making changes to Jekyll site

git pull
cd _site
git pull
cd ..
git status
