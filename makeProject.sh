mkdir $1
cd $1
git init
mkdir bin
mkdir include
mkdir lib
mkdir share
mkdir man
mkdir info
echo "$1" >> README.md
touch .gitignore
git add bin
git add include
git add lib
git add share
git add man
git add info
git add README.md
git add .gitignore
git commit -m "Create initial structure."
