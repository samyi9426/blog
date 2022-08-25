#!/bin/bash
echo -e "\n"
echo "$(date '+%Y-%m-%d %H:%M:%S') running script..."

cd $HOME/blog/
# 部署
echo "部署..."
hexo clean
hexo g -d

# 备份
echo "备份..."
bash $HOME/blog/.scripts/autoUpload.sh
echo -e "----------------- end ------------------------\n"