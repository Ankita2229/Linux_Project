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
			then	PLANCOST=149
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

