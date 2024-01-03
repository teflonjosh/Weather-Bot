#!/bin/bash
# 
# Declare Time Variable at 0 onLoad
SECONDS=0
#
echo "Hi! What's your name?" 
    read name
#
echo "Hello! $name I'm a program that displays weather data on your terminal :)"
    echo -e "Would you like to check the weather somewhere? (yes/no)"
        read answer
# main WHILE loop from YES $answer =>
    while true; do
# first IF LOOP =>
    if [[ $answer == "yes" ]]; then
        echo "Great! For what city would you like? (please enter city)"
            read target
                weather=$(curl http://v2.wttr.in/$target)
            echo -e " $weather"
        echo -e
# Second {internal} IF input =>
    echo -e "Would you like to check a different city now? (yes/no)"
        read different
# exit loop if NO =>
        if [[ $different == "no" ]]; then
            echo "Ok, glad I could help there! Have a nice day :)"
        break
# terminate {internal} loop =>
    fi
# ELSE for main WHILE LOOP  =>
    else
        echo "Ok, take your chances out there. I'm here if you need me :)"
        break
    fi
# Complete main WHILE loop =>
done
#
echo -e
# TIMER SCRIPT to count and display => 
    minutes=$((SECONDS / 60))
        seconds=$((SECONDS % 60))
    echo "We checked the weather for $minutes minutes and $seconds seconds today!"
#
# EOP #
