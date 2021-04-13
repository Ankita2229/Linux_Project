#!/bin/bash


#Shopping Experience

echo " $VARNAME, Please rate your CULT OF APPLE shopping experience" 
echo  "On a scale of 1 or 5, 1 being a poor experience; 5 potential repeat business and referral "

until [ "1" == "$How shall we better serve you, $VARNAME when you come again?"]
do
echo "How shall we better serve you, $VARNAME when you come again?"
break
until [ "5" == "$Thank you $VARNAME come again."]
do 
echo "Thank you $VARMANE come again."
done
