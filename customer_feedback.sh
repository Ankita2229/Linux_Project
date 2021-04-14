#!/bin/bash


#Shopping Experience

echo " $VARNAME, Please rate your CULT OF APPLE shopping experience"
echo "How shall we better serve you, $VARNAME when you come again?"

read -p "On a scale of 1 or 5, 1 being a poor experience; 5 potential repeat business plus referral"  rate
until [[ $rate == [0-5] ]]
do
echo "CHOOSE EITHER 1 or 5"
read -p "On a scale of 1 or 5, 1 being a poor experience; 5 potential repeat business plus referral"  rate
done
echo "Thank you for your time and feedback today $VARMANE, come again, please."


