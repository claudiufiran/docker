git pull
git status
echo "commit message:"
read msg
git add -A
git commit -m "$msg"
git push
