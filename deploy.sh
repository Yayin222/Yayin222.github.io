#!/bin/bash
# 博客一键部署脚本
# 用法: ./deploy.sh "提交信息"

BLOG_DIR=~/yayin222.github.io
COMMIT_MSG="${1:-更新博客 $(date '+%Y-%m-%d %H:%M')}"

cd $BLOG_DIR

echo "📝 正在生成静态文件..."
hexo clean
hexo generate

echo ""
echo "🚀 正在部署到 GitHub Pages..."
hexo deploy

echo ""
echo "📦 正在提交源文件到 hexo 分支..."
git add .
git commit -m "$COMMIT_MSG" 2>/dev/null || echo "无变更需要提交"
git push origin hexo

echo ""
echo "✅ 部署完成！"
echo "🌐 访问: https://yayin222.github.io/"