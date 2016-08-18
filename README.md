git 常作操作 

git reset --hard commit_id() 版本切换

git checkout -- (修改过的文件,前提是没有操作git add .)

git reset head nav (将暂缓区的内容,变成活动区,再用git checkout -- xxx)来撤消

git branch -d xx 删除本地分支

git push origin --delete xx 删除远程分支


git checkout -b branch_name tag_name 这样会从 tag 创建一个分支，然后就和普通的 git 操作一样了

git tag xxxx 
git checkout -b branch_name tag_name
这样会从 tag 创建一个分支，然后就和普通的 git 操作一样了
