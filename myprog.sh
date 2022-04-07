#!/bin/bash
# 2022-03-30
# Song Hyegyeong

mkdir temp
echo "...create temp directory..."

cp num1.txt num2.txt temp
echo "...copy files to temp directory..."

echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"

read -p "select menu: " menu
set $menu
echo "...add selected..."

echo "...run calculater..."
./cal.sh $1
