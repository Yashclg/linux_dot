#!/bin/sh

gap=$(bspc config window_gap)
#lpad=$(bspc config left_padding) 
#rpad=$(bspc config right_padding) 

if [ "${gap}" == "8" ] ; then 
    exec bspc config window_gap 0 
elif [ "${gap}" == '0' ]; then
    exec bspc config window_gap 8
fi

