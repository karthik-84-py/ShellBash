#!/bin/bash

if [ $# -gt 0 ]; then
        for user in $@; do
                echo $user
                existinguser=$(cat /etc/passwd | grep -i -w $user | awk -F ":" '{print $1'})
                if [ "$user" = "$existinguser" ]; then
                        echo "$user Already User Present in the server, Please provide New Unique Name"
                else
                        echo "Unique User Name, Let's Create User Name in the Server"
                        useradd $user
                        spec=$(echo ' !@#$%^&*()_' | fold -w1 | shuf | head -1)
                        password="test@${RANDOM}${spec}"
                        echo "$user:$password" | chpasswd
                        echo "The temporary password the $user is ${password}"
                        passwd -e $user
                fi
        done
else
        echo "Please enter the valid parameter"
fi
