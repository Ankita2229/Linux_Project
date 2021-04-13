

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

select(){

Mac_options=(Macbookair MacbookPro Imac Return\ to\ the\ main\ menu)
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
;;

MacbookPro)
show_MacbookPro_cost
;;
Imac)
show_Imac_cost
;;
*)
echo -n "No other options found"
esac
}

#Ipad_cost------------------------------
show_Ipad_cost(){
Ipad_cost=300
}
show_IpadPro_cost(){
IpadPro_Cost=799
}

case Ipad_options in
Ipad)
show_Ipad_cost
;;
IpadPro)
show_IpadPro_cost
;;
esac


#Ipad Options-------------------------------------
select(){

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
  echo -n "You have selected an Ipad"
;;
IpadPro)
show_IpadPro_cost
echo -n "You have selected an IpadPro"
;;
*)
echo -n "No other options available "
																	#!/bin/bash
esac
}

#Iphone functions-----------------

#Iphone Cost
show_12_cost(){
iphone_cost=799
}
show_12Pro_cost(){
iphone_cost=999
}
show_12ProMAx_cost(){
iphone_cost=1099
}
case $iphone_selection in
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



select_iphone(){
Iphone_options=(12 12Pro 12ProMax Return\ to\ the\ main\ menu)
num=0
for i in " ${iphone_options[@]} "
do
   (num++)
echo "num $i"
done

read -p  "Please select your Iphone: " Iphone_selection
case $iphone_selection in
12)
show_12_cost
echo -n "You have selected an Iphone 12"
;;
12Pro)
show_12ProMax_cost
echo -n "You have selected 12Pro "
;;
12ProMax)
select_12ProMax_cost
echo -n "You have selected 12Pro MAx"
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
   echo -n "You have selected an Ipad"
   ;;
 Iphone)
   echo -n "You have selected an Iphone"
   ;;
  Mac)
   echo -n "You have selected a Mac"
   ;;
   *)
   echo -n "no other options found"
   ;;
esac
