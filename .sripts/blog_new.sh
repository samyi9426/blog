#!/bin/bash

post_name="$1"
cd ~/blog
hexo new $post_name
echo ~/blog/source/_posts/$post_name
/Applications/Typora.app/Contents/MacOS/Typora ~/blog/source/_posts/$post_name.md &