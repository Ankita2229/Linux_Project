
#Mac_cost
show_Macbookair_cost(){
  Macbookair_cost=999
}
show_MacbookPro_cost(){
  MacbookPro_cost=1299
}
show_Imac_cost(){
  Imac_cost=1799
}

case $Mac_options in
Macbookair)
show_Macbookair_cost
;;
MacbookPro)
show_MacbookPro_cost
;;

Imac)
show_Imac_cost
;;
esac


#Mac_options-----------------------------------------------------

select_Macbook(){

Mac_options=( Macbookair MacbookPro Imac Return\ to\ the\ main\ menu )
num=0
for i in "${Mac_options[@]}"
do
 ((num++))
echo "$num. $i"
done
read -p "Please select your Mac: " name

case $name in
Macbookair)
show_Macbookair_cost
echo -n "You have selected a Macbookair and the price is 999"
;;
MacbookPro)
show_MacbookPro_cost
echo -n  " You have selected a MacbookPro and the price is 1299"
;;
Imac)
show_Imac_cost
echo -n " You have selected an Imac and thge cost is 1799" 
;;

*)
echo -n "No other options found"
esac
}

#Ipad_cost------------------------------
show_Ipad_cost(){
Ipad_cost=399
}
show_IpadPro_cost(){
IpadPro_Cost=799
}

case $Ipad_options in
Ipad)
show_Ipad_cost
;;
IpadPro)
show_IpadPro_cost
;;
esac


#Ipad Options-------------------------------------
select_Ipad(){

Ipad_options=(Ipad IpadPro Return\ to\ the\ main\ menu)
num=0

for i in "${Ipad_options[@]}"

do

   ((num++))
   echo "$num. $i"
done



read -p "Please select your Ipad: " name

case $name in

Ipad)
show_Ipad_cost
  echo -n "You have selected an Ipad and the cost is 399 "
;;
IpadPro)
show_IpadPro_cost
echo -n "You have selected an IpadPro and the cost is 799"
;;
*)
echo -n "No other options available "
																	#!/bin/bash
esac
}

#Iphone functions-----------------

#Iphone Cost
show_12_cost(){
Iphone_cost=799
}
show_12Pro_cost(){
Iphone_cost=999
}
show_12ProMAx_cost(){
Iphone_cost=1099
}

 case $Iphone_options in
12)
   show_12_cost
;;

12Pro)
    show_12Pro_cost
;;

ProMax)
      show_ProMax_cost
;;

*)
   echo -n "No other options found"
;;

esac




select_Iphone(){


Iphone_options=(12 12Pro 12ProMax Return\ to\ the\ main\ menu)
num=0

for i in " $Iphone_options[@]} "
do
   ((num++))

echo "num $i"
done


read -p  "Please select your Iphone: " name

case $name in
12)
show_12_cost

echo -n "You have selected an Iphone 12 and the cost is 799"
;;
12Pro)
show_12ProMax_cost

echo -n "You have selected 12Pro and the cost is 999 "

;;

12ProMax)
select_12ProMax_cost

echo -n "You have selected 12Pro MAx and the cost is 1099"
;;

*)

echo -n "No other options found"

esac
}


#Welcome-----------------------------
echo  "  --------------------"
echo  "   Welcome to Apple"
echo  "  --------------------"



#User Input--------------------------------


echo "-----------------------------------"
echo " what product would you like to buy?"
echo "-----------------------------------"

#different device options----------------------

options=(Ipad Iphone Mac)

num=0

for i in "${options[@]}"
do
    ((num++))
    echo "$num. $i"
done


read -p "Please select your device: " name


case $name in

 Ipad)
select_Ipad
   echo -n "You have selected an Ipad"
   ;;
 Iphone)
 select_Iphone
   echo -n "You have selected an Iphone"
   ;;
  Mac)  
select_Macbook
 echo -n "You have selected a Mac"
   ;;
   *)
   echo -n "no other options found"
   ;;
esac




select_size () {
    iphone_size=(12  pro pro\ max)

    n=0
    for i in "${iphone_size[@]}"
    do

      ((n++))
      echo "$n $i"
      done
}




select_color () {
    iphone_color=(Black White Purple)

n=0
for i in "${iphone_color[@]}"
do
   ((n++))
    echo "$n $i"
    done
}


select_storage () {
      iphone_storage=(128GB 256GB 512GB)

n=o
for i in "${iphone_storage[@]}"

do 

 ((n++))
  echo "$n $i"
  done

}


select_size
read -p " what size do you like to get?"  Selected_Size
select_color
read -p "what color do you like to get?" Selected_Color
select_storage
read -p "what storage do you like to get?" Selected_Storage



#!/bin/bash

SELECTEDPLAN=0
SELECTEDCOVERAGE=0
PLANCOST=0

function showAvailablePlans
{
        echo "Apple Care offers two plans currently : "
        echo "1. 2 Years of coverage with one time payment "
        echo "2. Upto 5 Years of coverage with monthly payment "        
        echo "3. Return to previous menu "
        read -p "Enter your choice  :" SELECTEDPLAN
        plandetails
}

function calculateInsurancecost
{
  MESSAGE=""
  case $SELECTEDPLAN in
    1)
      if [ $SELECTEDCOVERAGE -eq 1 ]
      then  PLANCOST=149
      else
          PLANCOST=249
      fi
            MESSAGE="one time payment of \$$PLANCOST for 2 years"
      ;;
    2)
      if [ $SELECTEDCOVERAGE -eq 1 ]
           then PLANCOST=8
           else
                PLANCOST=12
           fi
           MESSAGE="\$$PLANCOST monthly for 5 years"
           ;;
       esac
       echo "The insurance cost you $MESSAGE"

}


function plandetails
{
        case $SELECTEDPLAN in
                1)
                  echo "2 Years of coverage has 2 options: "    
                  echo '1. $149 for basic coverage '
                  echo '2. $249 with theft and loss protection '
                  ;;
                 2)
                 echo "5 Years of coverage has 2 options: "
                 echo '1. $8/mo. for basic coverage '
                 echo '2. $12/mo. with theft and loss protection'
                 ;;
                *)
                        echo "return to main menu"
                        ;;

        esac
        read -p "Please select the coverage plan " SELECTEDCOVERAGE
  calculateInsurancecost

}


read -p "Are you interested to purchase apple care protection plan for your phone ? [Y/N] :  "  choice


if (( $choice == "Y" || $choice == "y" ))
then
  showAvailablePlans
 else
        #go back the main flow
        echo "return to main menu"
fi



echo "What is your first and last name, please?"
read VARNAME
echo "Welcome to the Cult of Apple, $VARNAME."
echo "If you are interested in recieving further promotions & store updates please enter your email, $VARNAME."
read VAREMAIL
echo "Thank you, $VARNAME, you entered: $VAREMAIL" 



total=$(expr $Imac_cost + $Iphone_cost + $Macbookair_cost + $PLANCOST)

if [[ $total -gt "0" ]]; then
  tax=$(echo $(($total * 43/1000)))
else
  tax=0
fi


DEVICES[$i]=$select_size
((i++))

PRICE[$j]=$Imac_cost
((j++))



USERNAME=$VARNAME
EMAIL=$VAREMAIL
DATE=$(date)

DEVICES=("IPhone8" "IPhoneX")
QUANTITY=(1 2)
PRICE=(499 899)
NUMBER_OF_ITEMS=${#DEVICES[@]}
RETURN_XCHNG_DATE=$(date --date=now+30days)
SUB_TOTAL=0
TAXES=0
TOTAL_AMT=0

function printInvoice
{
echo "--------------------------------------------------------"
echo -e "Apple Store, Washington Square \n9575 SW Washington Rd \nAlexandria VA 22311 \nuniversityparkvillage@apple.com \n(343)324 4434\n"

echo "--------------------------------------------------------"
echo -e "$DATE\n"
echo -e "$USERNAME\n"
echo -e "Order Number:$((RANDOM))\n"
echo "--------------------------------------------------------"


index=0
echo -e "#   Item           Quantity          Price"

while [ $index -lt $NUMBER_OF_ITEMS ]
do
  echo -e "$((index+1))   ${DEVICES[index]}            ${QUANTITY[index]}             \$${PRICE[index]}"
((index++))
done

echo "--------------------------------------------------------"
echo "                 SubTotal:           \$$SUB_TOTAL        "
echo "                 Taxes@4.3%:          \$$TAXES        "
echo "                 Total:              \$$TOTAL_AMT        "
echo "--------------------------------------------------------"
echo -e "\n\nReturn/Exchange Policy: Last date for any\nexchange or return is 30 days from now i.e\n$RETURN_XCHNG_DATE"
echo "--------------------------------------------------------"

}

#calling function
printInvoice



echo " $VARNAME, Please rate your CULT OF APPLE shopping experience"
echo "How shall we better serve you, $VARNAME when you come again?"

read -p "On a scale of 1 or 5, 1 being a poor experience; 5 potential repeat business plus referral"  rate
until [[ $rate == [0-5] ]]
do
echo "CHOOSE EITHER 1 or 5"
read -p "On a scale of 1 or 5, 1 being a poor experience; 5 potential repeat business plus referral"  rate
done
echo "Thank you for your time and feedback today $VARMANE, come again, please."



i=0
declare -a device_list

j=0
declare -a cost_list