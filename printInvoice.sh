#!/bin/bash

USERNAME="XYZ HHT"
EMAIL="abc@def.com"
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
echo "                 Taxes@20%:          \$$TAXES        "
echo "                 Total:              \$$TOTAL_AMT        "
echo "--------------------------------------------------------"
echo -e "\n\nReturn/Exchange Policy: Last date for any\nexchange or return is 30 days from now i.e\n$RETURN_XCHNG_DATE"
echo "--------------------------------------------------------"

}

#calling function
printInvoice





