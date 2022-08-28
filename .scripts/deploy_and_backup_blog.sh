#!/bin/bash
echo -e "\n"
echo "$(date '+%Y-%m-%d %H:%M:%S') running script..."

cd $HOME/blog/
# 部署
echo "部署..."
hexo g -d

# 备份
echo "备份..."
git add .
git commit -m "backup my blog"
git push

echo -e "----------------- end ------------------------\n"
