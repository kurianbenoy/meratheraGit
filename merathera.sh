#!/bin/bash
echo "                              STATUS
==============================================================================="
git status

if [ $? -ne 0 ]
then
    echo 'That is not a GIT repository'
    exit 1
fi
echo "===============================================================================



ENTER THE OPTION
1. ADD A FILE
2. ADD ALL FILES
3. ADD ALL FILES and COMMIT
4. ADD All files, COMMIT AND PUSH
5. PUSH the branch
6. FORCE PUSH THE branch
6. PULL From origin
7. ADD new branch
8. ADD new remote"


read INPUT

if [ $INPUT -ne 1 ]
then
    git add .
fi

#Code for all the logic

case $INPUT in

    1)
	echo "Enter the file to add"
	read FILE
	git add $FILE
	git status	
	;;

    2)	
	git status
	;;

    3)
	echo "enter commit message"
	read commit_message
	git commit -m "$commit_message"
	;;

    4)
	echo "enter commit message"
	read commit_message
	git commit -m "$commit_message"
	git status
	git push origin master
	;;

    5)
	git push origin master
	;;

    6)
	git push origin master --force
	;;

    7)
	git pull --rebase origin master
	;;

    8)
	echo "Name the new branch"
	read branch
	git checkout -b $branch
	;;

    9)
	echo "Enter the remote name"
	read rname
	echo "Add url"
	read url
	git remote add $rname $url
	;;

    *)
	echo 'Sorry, you need to introduce one number listed'
	exit 2
	;;

esac

exit 0
