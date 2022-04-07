#!/bin/bash
# 2022-03-31
# Song Hyegyeong

declare -a num

num[0]=$(<num1.txt)
num[1]=$(<num2.txt)

if [ "$#" == 0 ]; then
   echo "...none operator parameter..."
   echo "1) add"
   echo "2) sub"
   echo "3) div"
   echo "4) mul"
   read -p "select menu: " menu
   set $menu
fi

case $1 in
  1) op="add" 
     let res=${num[0]}+${num[1]};;
  2) op="sub"
     let res=${num[0]}-${num[1]};;
  3) op="div"
     let res=${num[0]}/${num[1]};;
  4) op="mul"
     let res=${num[0]}*${num[1]};;
  *) exit 0;;
esac

echo ""
echo "num1 : ${num[0]}"
echo "num2 : ${num[1]}"
echo "op : $op"
echo "result : $res"

