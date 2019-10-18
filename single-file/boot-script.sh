#!/bin/sh

# Demo script for OTA updates
# Replace with something that changes device,
# such as LED blinking, display a picture or video, etc.
# Should not exit (due to systemd configuration)

gpioset gpiochip0 14=1

while true ; do
        gpioset gpiochip7 7=1
        sleep 1
        gpioset gpiochip7 7=0
        sleep 1
done
