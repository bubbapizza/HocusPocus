#!/bin/sh

# Get the gpio pin.
gpiopin=$1

# Wait until the gpio pin appears, then set set the pin owner to be the
# hocuspocus user.
while true
do
    if [ -f /sys${gpiopin}/value ] 
    then
        chown hocuspocus /sys${gpiopin}/value 
        chown hocuspocus /sys${gpiopin}/direction
        break
    fi 
done
