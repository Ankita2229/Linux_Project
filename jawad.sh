#!/bin/bash
deviceoption1=Ipad
deviceoption2=Ipad
deviceoption3=Macbook
echo "1. Ipad"
echo "2. Iphone"
echo "3. Macbook"

read -p " Please select your device [1-3] >> "deviceoption
if [[ $deviceoption1 == $Ipad ]]; then
echo " You have selected $Ipad"
elif [[ $deviceoption2 == $Iphone ]]; then
echo " You have selected $Iphone"
elif [[ $deviceoption3 == $Macbook ]]; then
echo "You have selected $Macbook"
else "no condition met"
fi

