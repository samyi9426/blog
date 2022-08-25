#!/bin/bash
echo -e "\n"
echo "running script $0 at $(date '+%Y-%m-%d %H:%M:%S')..."

cd $HOME/blog/
# 部署
hexo clean
hexo g -d

# 备份
bash $HOME/blog/.scripts/autoUpload.sh
echo -e "-----------------------------------------\n"