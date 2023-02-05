#!/usr/bin/bash

rm -rf out

yarn build

yarn export

folder="../xiaoxiaojx.github.io"

if [[ -d $folder ]]; then
  cd $folder;
  cp -r /Users/duoxiaokai/work/me/my-blog/out/* /Users/duoxiaokai/work/xiaoxiaojx.github.io/;
  echo 发布完成;
else
  echo '目录不存在';
fi