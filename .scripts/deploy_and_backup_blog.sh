#!/bin/bash
echo "running script $0 at $(date)..."

cd $HOME/blog/
# 部署
hexo clean
hexo g -d

# 备份
bash $HOME/blog/.scripts/autoUpload.sh