update_array(){
  device_list[$i]=$option
  ((i++))
  cost_list[$j]=$curr_cost
  ((j++))
}

check_prev_ipad(){
  if [[ ipad_cost != 0 ]]; then
    ipad_cost=$(expr $ipad_cost + $curr_cost)
  else
    ipad_cost=$ipad_cost
  fi
}

check_prev_mac(){
  if [[ mac_cost != 0 ]]; then
    mac_cost=$(expr $mac_cost + $curr_cost)
  else
    mac_cost=$mac_cost
  fi
}

check_prev_iphone(){
  if [[ iphone_cost != 0 ]]; then
    iphone_cost=$(expr $iphone_cost + $curr_cost)
  else
    iphone_cost=$iphone_cost
  fi
}

continue_case(){
  read -p "Do you wish to continue with another purchase? [Y/N]: " select
  if [[ $select == y || $select == Y ]]; then
    buy_option
  else
    read -p "Are you interested to purchase apple care protection plan for your phone? [Y/N] :  "  insurance
    if [[ $insurance == "Y" || $insurance == "y" ]]; then
      insurance
    else
      echo "" #go back to main menu from insurance!
    fi
    printInvoice
  fi
}


USERNAME=$VARNAME
EMAIL=$VAREMAIL
DATE=$(date)

QUANTITY=(1 2)
NUMBER_OF_ITEMS=${#device_list[@]}
RETURN_XCHNG_DATE=$(date --date=now+30days)

function printInvoice
{



total=$(expr $ipad_cost + $iphone_cost + $mac_cost + $PLANCOST)

if [[ $total -gt "0" ]]; then
  tax=$(echo $(($total * 43/1000)))
else
  tax=0
fi


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
  echo -e "$((index+1))   ${device_list[index]}            ${QUANTITY[index]}             \$${cost_list[index]}"
((index++))
done

echo "--------------------------------------------------------"
echo "                 SubTotal:           \$$total        "
echo "                 Taxes@4.3%:          \$$tax        "
echo "                 Total:              \$$(expr $total + $tax)        "
echo "--------------------------------------------------------"
echo -e "\n\nReturn/Exchange Policy: Last date for any\nexchange or return is 30 days from now i.e\n$RETURN_XCHNG_DATE"
echo "--------------------------------------------------------"

}


iphone_pref(){
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

}

select_Macbook(){

  # mac_options=("macbook" "macbookPro" "Return to main menu" "Quit")
  Mac_options=("Macbookair" "MacbookPro" "Imac")
  # Mac_options=( Macbookair MacbookPro Imac Return\ to\ the\ main\ menu)
  num=0
  for i in "${Mac_options[@]}"
  do
   ((num++))
  echo "$num. $i"
  done
  read -p "Please select your Mac: " name

  case $name in
    Macbookair)
      # show_Macbookair_cost
      curr_cost=1099
      update_array
      check_prev_mac
      echo -n "You have selected a Macbookair and the price is 999"
      continue_case
      ;;
    MacbookPro)
      # show_MacbookPro_cost
      curr_cost=1299
      update_array
      check_prev_mac
      echo -n  " You have selected a MacbookPro and the price is 1299"
      continue_case
      ;;
    Imac)
      # show_Imac_cost
      curr_cost=1599
      update_array
      check_prev_mac
      echo -n " You have selected an Imac and thge cost is 1799" 
      continue_case
      ;;


    *)
    echo -n "No other options found"
  esac
}

select_Ipad(){

  Ipad_options=("Ipad" "IpadPro")
  num=0

  for i in "${Ipad_options[@]}"

  do

     ((num++))
     echo "$num. $i"
  done



  read -p "Please select your Ipad: " name

  case $name in

  Ipad)
    curr_cost=499
    # show_Ipad_cost
    update_array
    check_prev_ipad
    echo -n "You have selected an Ipad and the cost is 499 "
    continue_case
    ;;
  IpadPro)
    curr_cost=1399
    # show_IpadPro_cost
    update_array
    check_prev_ipad
    echo -n "You have selected an IpadPro and the cost is 799"
    continue_case
    ;;
  *)
    echo -n "No other options available "
  esac
}


select_Iphone(){

  Iphone_options=("12" "12Pro" "12ProMax")
  num=0

  for i in " ${Iphone_options[@]} "
  do
     ((num++))

  echo "$num. $i"
  done


  read -p  "Please select your Iphone: " name

  case $name in
    12)
      # show_12_cost
      curr_cost=799
      update_array
      check_prev_iphone
      iphone_pref
      echo -n "You have selected an Iphone 12 and the cost is 799"
      continue_case
      ;;
    12Pro)
      # show_12ProMax_cost
      curr_cost=999
      update_array
      check_prev_iphone
      iphone_pref
      echo -n "You have selected 12Pro and the cost is 999 "
      continue_case
      ;;

    12ProMax)
      # select_12ProMax_cost
      curr_cost=1099
      update_array
      check_prev_iphone
      iphone_pref
      echo -n "You have selected 12Pro MAx and the cost is 1099"
      continue_case
      ;;

    *)
      echo -n "No other options found"

  esac
}


#Welcome-----------------------------
echo  "  --------------------"
read -p "What is your first and last name, please? " VARNAME
firstname=`echo "$VARNAME" | cut -f1 -d' '`
lastname=`echo "$VARNAME" | cut -f2 -d' '`
echo "   Welcome, $firstname!"
echo "Welcome to the Cult of Apple, $firstname."
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
   
   ;;
 Iphone)
 select_Iphone
   
   ;;
  Mac)  
  select_Macbook
 
   ;;
   *)
   echo -n "no other options found"
   ;;
esac



insurance(){

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

}
#!/bin/bash




echo "If you are interested in recieving further promotions & store updates please enter your email, $VARNAME."
read VAREMAIL
echo "Thank you, $VARNAME, you entered: $VAREMAIL" 





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