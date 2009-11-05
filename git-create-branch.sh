#!/bin/sh
# git-create-branch <branch_name>
# Usage info : http://blog.tinucleatus.com/?p=287
 
if [ $# -ne 1 ]; then
         echo 1>&2 Usage: $0 branch_name
         exit 127
fi
 
branch_name=$1
git push origin master:refs/heads/$branch_name
echo "git push origin master:refs/heads/$branch_name"
git fetch origin
git checkout --track -b $branch_name origin/$branch_name
git pull