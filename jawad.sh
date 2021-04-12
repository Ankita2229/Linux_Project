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

read -p " Please select your device [1-3]: "DEVICEOPTION
if [ $DEVICEOPTION1 == $Ipad ]; then
echo " You have selected an Ipad"
elif [ $DEVICEOPTION2 == $Iphone  ]; then
echo " You have selected an Iphone"
elif [  $DEVICEOPTION3 == $Mac  ]; then
echo "You have selected Macbook"
else 
     echo "no other options found"
fi




echo "------------------------------------"
#DEVICEMODELS
#Ipad

DEVICEMODEL1=$Ipad
DEVICEMODEL2=$Ipadmini
DEVICEMODEL3=$IpadPro

echo "1. Ipad"
echo "2. Ipadmini"
echo "3. IpadPro"
read -p "please select your device [1-3]:" DEVICEMODEL

if  [ $DEVICEMODEL1 == $Ipad ]; then
echo " you have selected an Ipad"
elif [ $DEVICEMODEL2 == $Ipadmini ]; then
echo " you have selected an Ipadmini"
elif [ $DEVICEMODEL3 == $IpadPro ]; then
echo " you have selected an Ipad"
else
 echo " no other Models found "





echo "-----------------------------------"

#IPHONE
DEVICEMODEL1=$Iphone12
DEVICEMODEL2=$Iphone12Pro
DEVICEMODEL3=$Iphone12ProMax
echo " Apple offers 3 models currently: "
echo "1. Iphone12 "
echo "2. Iphone12Pro"
echo "3. Iphone12ProMax"
echo "4. Return to previous menu"
read -p "Click on your choice :" DEVICEMODEL
if [ $DEVICEMODEL1   == $Iphone12 ]; then
echo " You have selected an Iphone12"
elif [ $DEVICEMODEL2 == $Iphone12pro ]; then
echo " You have selected an Iphone12Pro"
elif [ $DEVICEMODEL3 == $Iphone12ProMax ]; then
echo " You have selected an Iphone12ProMax"
else 
echo " no other options found"
fi



echo "----------------------------------------"

DEVICEMODEL1=$Macbookair
DEVICEMODEL2=$MacbookPro
DEVICEMODEL3=$IMac

echo "1. Macbookair"
echo "2. MacbookPro"
echo "3. IMac"
read -p "Please select your device [1-3]:"DEVICEMODEL 
if [ $DEVICEMODEL1 == $Macbookair ]; then
echo " You have selected a Macbook air"
elif  [  $DEVICEMODEL2 == $MacbookPro ]; then
echo " You have selected a MacbookPro"
elif [ $DEVICEMODEL3 == $MacbookPro ]; then
echo " You have selected an IMac"
else 
echo " no other options found"
fi



# -------in file jawad.sh.save-------------
# #!/bin/bash
# deviceoption1=Ipad
# deviceoption2=Ipad
# deviceoption3=Macbook
# echo "1. Ipad"
# echo "2. Iphone"
# echo "3. Macbook"

# read -p " Please select your device [1-3] >> "deviceoption
# if [ $deviceoption1 == $Ipad ]; then
# echo " You have selected $Ipad"
# elif [[ $deviceoption2 == $Iphone ]]; then
# echo " You have selected $Iphone"
# elif [[ $deviceoption3 == $Macbook ]]; then
# echo "You have selected $Macbook"
# else "no condition met"
# fi
