#!/bin/bash

# prints to the centre of the terminal

cols=$( tput cols )
rows=$( tput lines )

message=$@

input_length=${#message}

half_input_length=$(( $input_length / 2 ))

middle_row=$(( $rows / 2 ))
middle_col=$(( ($cols / 2 ) - $half_input_length ))

# clears terminal
tput clear
# moves the curser
tput cup $middle_row $middle_col
tput bold
echo $@
# turns bold off
tput sgr0 
# moves the curser
tput cup $( tput lines ) 0