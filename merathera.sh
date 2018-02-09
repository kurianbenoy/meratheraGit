#!/bin/bash

git status
echo "Enter option:"
echo "1. Add a file "
echo "2. Add all file "
echo "3. Add all files , commit "


read input



if [ $input = '1' ]
then
  echo "Enter the file to add"
  read file
  git add $file
  git status
else
  git add .
fi


if [ $input = '2' ]
then
  git add .
  git status
fi

if [ $input = '3' ]
then
  git add .
  echo "enter commit message"
  read commit_message
  git commit -m "$commit_message"
fi
