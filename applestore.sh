#!/bin/bash

select_size () {
    size=(12  pro pro\ max)

    n=0
    for i in "${size[@]}"
    do

      ((n++))
      echo "$n $i"
      done
}




select_color () {
    color=(Black White Purple)

n=0
for i in "${color[@]}"
do
   ((n++))
    echo "$n $i"
    done
}


select_storage () {
      storage=(128GB 256GB 512GB)

n=o
for i in "${storage[@]}"

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






























##IPHONE
SELECTEDSIZE=0
SELECTEDCOLOR=0
SELECTEDSTORAGE=0

function showAvailablesizes

{

    echo "Apple Store offers two sizes of iPhone12"
    echo "1. iPhone pro "
    echo "2. iphone pro max"
    echo "3. Return to the previous menu"
    read -p  "Enter your choice:" SELECTEDSIZE  
  }
showAvailablesizes
  
  
  
  function availablesize
  {
  
    MESSAGE =""
    case $SELECTEDSIZE in
    
      if " [ $SELECTEDSIZE -eq 1 ]"
      then SELECTEDSIZE=iPhone pro
      else
           SELECTEDSIZE=iphone pro max
       
       fi
       MESSAGE="\$$SELECTEDSIZE is ipohone pro"
       ;;
       
       
    }
  
  
  function ShowAvailableColors
  
  {
  
  echo "Apple Store offers iPhone12 in 2 colors currently:"
  echo "1. Black" 
  echo "2. Purple"
  echo "3. Return to the previous menu"
  read -p  "Enter your CHOICE:" SELECTEDCOLOR
  
  } 
  
  function availablecolor
  {
  
    MESSAGE =""
    case $SELECTEDCOLORS
    
      if [ $SELECTEDCOLOR -eq 1 ]
      then SELECTEDCOLOR= Black
      else
           SELECTEDCOLOR = Purple
       
       fi
       MESSAGE="\$$SELECTEDCOLOR is Black"
       ;;
       
       
    }

  
  function showAvailablestorage
  {
 
 echo "Apple Store offers iPhone two in 2 different storage size"
    echo "1. 64 GB "
    echo "2. 128 GB"
    echo "3. Return to the previous menu"
    read -p "Enter your choice:" SELECTEDSTORAGESIZE
    
    }


function availablestorage
  {
  
    MESSAGE =""
    case $SELECTEDSTORAGE
    
      if [ $SELECTEDSTORAGE -eq 1 ]
      then SELECTEDSTORAGE= 64 GB
      else
           SELECTEDSTORAGE = 128 GB
       
       fi
       MESSAGE="\$$SELECTEDSTORAGE is 64 GB"
       ;;
       
       
    }
  
  



  
      
