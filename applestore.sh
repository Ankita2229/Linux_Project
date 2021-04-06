#!/bin/bash

#IPHONE
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
  
  function ShowAvailableColors
  
  {
  
  echo "Apple Store offers iPhone12 in 2 colors currently:"
  echo "1. Black" 
  echo "2. Purple"
  echo "3. Return to the previous menu"
  read -p  "Enter your CHOICE:" SELECTEDCOLOR
  
  } 
  
  function showAvailablestorage
  {
 
 echo "Apple Store offers iPhone two in 2 different storage size"
    echo "1. 64 GB "
    echo "2. 128 GB"
    echo "3. Return to the previous menu"
    read -p "Enter your choice:" SELECTEDSTORAGESIZE
    
    }

  
  



  
      
