if [ ! -n "$1" ];then
    echo "please give commit massge after bash. e.g. 
    > bash update.sh \"code: virtual table pics\"
    > bash update.sh \"ctf: pwn stack map\""
    exit 1
fi
var=$1
# echo $var

echo "[Step-1] git pull origin main:"
git pull origin master -v;
echo
echo "=== [WARNING] If conflict occured, related files will show below: ========="
git status -v
echo "=== [WARNING] Fix by hands if conflict exits. Then [RE-RUN] this script ==="
echo 

echo "[Step-2] Local changes add and commit:"
git checkout master -v;
git add . -v;

git commit -v -am "$var";


echo "[Step-3] git push origin main:"
git push origin master -v