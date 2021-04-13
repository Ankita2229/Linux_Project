#!/bin/bash

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






























