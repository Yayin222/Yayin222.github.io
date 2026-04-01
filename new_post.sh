#!/bin/bash
# 新建博客文章
# 用法: ./new_post.sh "文章标题"

TITLE="$1"

if [ -z "$TITLE" ]; then
    echo "用法: ./new_post.sh \"文章标题\""
    exit 1
fi

cd ~/yayin222.github.io
hexo new "$TITLE"

echo ""
echo "✅ 文章已创建！"
echo "📂 位置: source/_posts/$(echo $TITLE | tr ' ' '-').md"