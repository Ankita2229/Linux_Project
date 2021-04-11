																	#!/bin/bash
#Welcome----------------------------------






echo  "  --------------------"
echo  "   Welcome to Apple"
echo  "  --------------------"



#Question--------------------------------


echo "-----------------------------------"
echo " what product would you like to buy?"
echo "-----------------------------------"

#different device options----------------------

options=(Ipad Iphone Mac)

num=0

for i in "${options[@]}"
do
    ((num++))
    echo "$num$i"
done


read -p "Please select your device: " name

case $name in
 ipad)
   echo -n "You have selected an Ipad"
   ;;
 Iphone)
   echo -n "You have selected an Iphone"
   ;;
  Mac)
   echo -n "You have selected a Mac"
   ;;
   *)
   echo -n "no other options found"
   ;;
esac

#Iphone Options

