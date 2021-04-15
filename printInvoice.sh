( exec "/path/to/filname/jawad.sh" )
( exec "/path/to/filname/applestore.sh" )
( exec "/path/to/filname/gather_user_information.sh" )

#!/bin/bash
total=$(expr $ipad_cost + $iphone_cost + $mac_cost + $plan_cost)

if [[ $total -gt "0" ]]; then
	tax=$(echo $(($total * 43/1000)))
else
	tax=0
fi


USERNAME="XYZ HHT" #VARNAME
EMAIL="abc@def.com" #VAREMAIL
DATE=$(date)

DEVICES=("IPhone8" "IPhoneX")
QUANTITY=(1 2) #no array present!
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



( exec "/path/to/filname/customer_feedback.sh" )


