#!/bin/bash
# 程序功能：循环菜单程序，每个菜单项由一个子函数完成其功能

# 加法函数
add() {
    echo -n "请输入两个整数（用空格分隔）："
    read a b
    echo "结果：$a + $b = $((a + b))"
}

# 减法函数
sub() {
    echo -n "请输入两个整数（用空格分隔）："
    read a b
    echo "结果：$a - $b = $((a - b))"
}

# 乘法函数
mul() {
    echo -n "请输入两个整数（用空格分隔）："
    read a b
    echo "结果：$a * $b = $((a * b))"
}

# 除法函数
div() {
    echo -n "请输入两个整数（用空格分隔）："
    read a b
    if [ $b -eq 0 ]; then
        echo "错误：除数不能为零！"
    else
        echo "结果：$a / $b = $((a / b))（商），$((a % b))（余数）"
    fi
}

# 显示菜单函数
show_menu() {
    echo ""
    echo "======= 菜单程序 ======="
    echo "1) add  - 计算两个整数之和"
    echo "2) sub  - 计算两个整数之差"
    echo "3) mul  - 计算两个整数之积"
    echo "4) div  - 计算两个整数之商"
    echo "Q) 退出程序"
    echo "========================"
    echo -n "请输入您的选择 [1-4/Q]："
}

# 主循环
while true
do
    show_menu
    read choice

    case $choice in
        1)
            add
            ;;
        2)
            sub
            ;;
        3)
            mul
            ;;
        4)
            div
            ;;
        Q|q)
            echo "程序已退出。"
            break
            ;;
        *)
            echo "无效输入，请重新选择！"
            ;;
    esac
done
