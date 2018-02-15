#!/bin/bash
echo "                              STATUS "
echo "==============================================================================="
git status
echo "==============================================================================="

echo "  "
echo " "

echo "ENTER THE OPTION"
echo "1. ADD A FILE "
echo "2. ADD ALL FILES "
echo "3. ADD ALL FILES and COMMIT"
echo "4. ADD All files, COMMIT AND PUSH"
echo "5.PUSH the branch"
echo "6.FORCE PUSH THE branch"
echo "6. PULL From origin"
echo "7. ADD new branch"
echo "8. ADD new remote"


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

if [ $input = '4' ]
then
  git add .
  echo "enter commit message"
  read commit_message
  git commit -m "$commit_message"
  git status
  git push origin master
fi

if [ $input = '5' ]
then
  git push origin master
fi

if [ $input = '5' ]
then
  git push origin master --force
fi

if [ $input = '7' ]
then
  git pull --rebase origin master
fi

if [ $input = '8' ]
then
  echo "Name the new branch"
  read branch
  git checkout -b $branch
fi

if [ $input = '9' ]
then
  echo "Enter the remote name"
  read rname
  echo "Add url"
  read url

  git remote add $rname $url
fi
