#!/bin/bash
# 2022-03-31
# Song Hyegyeong

num1=$(<num1.txt)
num2=$(<num2.txt)

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
     let res=$num1+$num2;;
  2) op="sub"
     let res=$num1-$num2;;
  3) op="div"
     let res=$num1/$num2;;
  4) op="mul"
     let res=$num1*$num2;;
  *) exit 0;;
esac

echo ""
echo "num1 : $num1"
echo "num2 : $num2"
echo "op : $op"
echo "result : $res"

