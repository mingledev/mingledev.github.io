rm Packages
rm Packages.bz2
echo "正在打包"
dpkg-scanpackages -m . /dev/null > Packages
bzip2 Packages
echo "正在提交到github"
git add *
git commit -m 'update'
git push
echo "完成"
