#!/bin/bash

file='users.txt'


echo "John john@domain.com 325
Susan 510
Jane jane@domain.com 131 
Karl karl@domain.com 
Bert bert@localhost 150" > $file
#LINES=$(cat $file)

#number_of_lines=$(wc -l < $file)

#line_counter=1

#IFS=' '

#while  read -r CURRENT_LINE
#	do
#       while $line_counter <= number_of_lines
#        word_counter=$(wc -w <<< line_counter)
#          do
#           echo $word_counter
#          ((word_counter++))
#    ((line_counter++))
#       done
#done < $file

IFS=$'\n'
while read line; do

    if [ $(wc -w <<< "$line") -eq 3 ] 
    then
        name=$(echo "$line" | awk '{print $1}')
        email=$(echo "$line" | awk '{print $2}')
        id=$(echo "$line" | awk '{print $3}')
        if []
        
        then

        fi
    fi

done < $file



 


