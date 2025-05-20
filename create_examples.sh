#!/bin/bash

# 自动解析README.md并创建相应的目录和文件
# 如果文件已存在则跳过

# 基础路径
BASE_DIR="./examples"
README_FILE="./README.md"

# 确保基础目录存在
mkdir -p "$BASE_DIR"

# 检查README.md文件是否存在
if [ ! -f "$README_FILE" ]; then
  echo "错误：README.md文件不存在！"
  exit 1
fi

# 提取所有链接和标题
echo "正在解析README.md文件..."
links=$(grep -o '\[.*\](./examples/[0-9]*/README.md)' "$README_FILE")

# 处理每个链接
for link in $links; do
  # 提取路径和标题
  path=$(echo "$link" | grep -o './examples/[0-9]*/README.md')
  title=$(echo "$link" | grep -o '\[.*\]' | sed 's/\[\(.*\)\]/\1/')
  
  # 提取目录路径
  dir_path=$(dirname "$path")
  
  # 如果目录不存在，创建目录
  if [ ! -d "$dir_path" ]; then
    echo "创建目录: $dir_path"
    mkdir -p "$dir_path"
  else
    echo "目录已存在，跳过: $dir_path"
  fi
  
  # 如果README文件不存在，创建README文件
  if [ ! -f "$path" ]; then
    echo "创建文件: $path"
    
    # 创建README内容
    echo "# ${title}" > "$path"
    echo "" >> "$path"
    echo "## 场景描述" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
    echo "" >> "$path"
    echo "## 表结构" >> "$path"
    echo "" >> "$path"
    echo "```sql" >> "$path"
    echo "-- 待补充表结构" >> "$path"
    echo "```" >> "$path"
    echo "" >> "$path"
    echo "## 示例代码" >> "$path"
    echo "" >> "$path"
    echo "```sql" >> "$path"
    echo "-- 待补充SQL示例" >> "$path"
    echo "```" >> "$path"
    echo "" >> "$path"
    echo "## 执行结果" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
    echo "" >> "$path"
    echo "## 要点解析" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
  else
    echo "文件已存在，跳过: $path"
  fi
  
  # 创建data.sql文件
  data_sql_path="${dir_path}/data.sql"
  if [ ! -f "$data_sql_path" ]; then
    echo "创建文件: $data_sql_path"
    
    # 创建data.sql内容
    echo "-- ${title} 相关SQL" > "$data_sql_path"
    echo "" >> "$data_sql_path"
    echo "-- 创建数据库（如果不存在）" >> "$data_sql_path"
    echo "CREATE DATABASE IF NOT EXISTS mysql_examples DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" >> "$data_sql_path"
    echo "USE mysql_examples;" >> "$data_sql_path"
    echo "" >> "$data_sql_path"
    echo "-- 创建表结构" >> "$data_sql_path"
    echo "-- 待补充表结构定义" >> "$data_sql_path"
    echo "" >> "$data_sql_path"
    echo "-- 插入示例数据" >> "$data_sql_path"
    echo "-- 待补充示例数据" >> "$data_sql_path"
    echo "" >> "$data_sql_path"
    echo "-- 示例查询" >> "$data_sql_path"
    echo "-- 待补充示例查询" >> "$data_sql_path"
  else
    echo "文件已存在，跳过: $data_sql_path"
  fi
done

echo "所有示例目录和文件创建完成！"