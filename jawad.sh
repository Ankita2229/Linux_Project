#!/bin/bash
#Welcome

echo "     Welcome to Apple.com"
echo "-----------------------------------"
echo "-----------------------------------"
echo "-----------------------------------"


echo " What product would you like to buy today ?"


echo "------------------------------------"

#DEVICEOPTIONS

DEVICEOPTION1=$Ipad
DEVICEOPTION2=$Iphone
DEVICEOPTION3=$Mac

echo "1. Ipad"
echo "2. Iphone"
echo "3. Macbook"

read -p " Please select your device [1-3] >> "DEVICEOPTION
if [ $DEVICEOPTION1 == $Ipad ]; then
echo " You have selected an Ipad"
elif [  $DEVICEOPTION2 == $Iphone  ]; then
echo " You have selected an Iphone"
elif [  $DEVICEOPTION3 == $Mac  ]; then
echo "You have selected Macbook"
else 
     echo "no other options found"
fi

echo "------------------------------------"
#DEVICEMODELS

#IPHONE
DEVICEMODEL1=$Iphone12
DEVICEMODEL2=$Iphone12Pro
DEVICEMODEL3=$Iphone12ProMax
echo " Apple offers 3 models currently: "
echo "1. Iphone12 "
echo "2. Iphone12Pro"
echo "3. Iphone12ProMax"
echo "4. Return to previous menu"
read -p "Click on your choice :"DEVICEMODEL
if [ $DEVICEMODEL == $Iphone12 ]; then
echo " You have selected an Iphone12"
elif [ $DEVICEMODEL == $Iphone12pro ]; then
echo " You have selected an Iphone12Pro"
elif [ $DEVICEMODEL == $Iphone12ProMax ]; then
echo " You have selected an Iphone12ProMax"
else 
echo " no other options found"
fi
