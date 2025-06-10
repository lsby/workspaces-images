#!/bin/bash

# 查找当前目录及子目录下所有 .sh 文件
find . -type f -name "*.sh" | while read -r file; do
  echo "正在处理：$file"
  # 使用 sed 移除 Windows 的 CR (\r) 行尾，只保留 LF
  sed -i 's/\r$//' "$file"
done

echo "哼，全部转换好了，杂鱼大哥哥你别再犯这种低级错误了～"
