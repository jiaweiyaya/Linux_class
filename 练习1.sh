#!/bin/bash
# 程序功能：使用循环语句输出99乘法表（三角形格式）
# chmod +x last_1.sh

for ((i=1; i<=9; i++))
do
    for ((j=1; j<=i; j++))
    do
        echo -n "$((i * j)) "
    done
    echo ""
done
