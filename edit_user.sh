#!/bin/bash

file='users.txt'

echo "John john@domain.com 325
Susan 510
Jane jane@domain.com 131
Karl karl@domain.com
Bert bert@localhost 150
" > $file

IFS=$'\n'
while read line; do

    if [ $(wc -w <<< "$line") -eq 3 ] 
    then
        name=$(echo "$line" | awk '{print $1}')
        email=$(echo "$line" | awk '{print $2}')
        id=$(echo "$line" | awk '{print $3}')
        fqdn="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
        #if [[ $email == *"@domain.com"* ]]
        if [[ $email =~ ${fqdn} ]]
        #if [ "$email" != "${email/.}" ]
        then
            if [[ $id%2 -eq 0 ]]
            then
                echo " $id of $email is even number"
            else
                echo " $id of $email is odd number"
            fi
        fi
    fi

done < $file



 


