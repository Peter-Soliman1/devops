#!/bin/bash

file='users.txt'

# copy users content to a txt file 

echo "John john@domain.com 325
Susan 510
Jane jane@domain.com 131
Karl karl@domain.com
Bert bert@localhost 150
" > $file

IFS=$'\n'
while read line; do

#if condition to check that three records to be checked have all required details (name , email and ID)
    if [ $(wc -w <<< "$line") -eq 3 ] 
    then
        name=$(echo "$line" | awk '{print $1}')
        email=$(echo "$line" | awk '{print $2}')
        id=$(echo "$line" | awk '{print $3}')
        # check if the record conatins valid FQDN (Email)
        fqdn="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
        if [[ $email =~ ${fqdn} ]]
        then
        # Check whether ID is ODD or EVEN
            if [[ $id%2 -eq 0 ]]
            then
                echo " $id of $email is even number"
            else
                echo " $id of $email is odd number"
            fi
        fi
    fi

done < $file



 


