#!/bin/bash

names=(
    "null"
    "white"
    "red"
    "green"
    "blue"
    "purple"
    "black"
)

function paint(){
HOSTNAME=$(hostname) #готово
echo -e "${COLOR_FON1}${COLOR1}HOSTNAME${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$HOSTNAME${ENDCOLOR}"

TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}TIMEZONE${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$TIMEZONE${ENDCOLOR}"

USER=$(whoami) #gotovo
echo -e "${COLOR_FON1}${COLOR1}USER${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$USER${ENDCOLOR}"

OS=$(hostnamectl | grep "Operating System" | awk '{print $3, $4, $5}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}OS${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$OS${ENDCOLOR}"

DATE=$(date '+%d %b %Y %H:%M:%S') #готово
echo -e "${COLOR_FON1}${COLOR1}DATE${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$DATE${ENDCOLOR}"

UPTIME=$(uptime -p) #gotovo
echo -e "${COLOR_FON1}${COLOR1}UPTIME${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$UPTIME${ENDCOLOR}"

UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}UPTIME_SEC${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$UPTIME_SEC${ENDCOLOR}"

IP=$(ifconfig | grep "inet " | awk '{print $2}' | cut -d '/' -f1 | tail -1) #gotovo
echo -e "${COLOR_FON1}${COLOR1}IP${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$IP${ENDCOLOR}"

MASK=$(ifconfig | grep "inet " | awk '{print $4}' | cut -d '/' -f1 | tail -1) #gotovo
echo -e "${COLOR_FON1}${COLOR1}MASK${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$MASK${ENDCOLOR}"

GATEWAY=$(ip route | grep "default" | awk '{print $3}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}GATEWAY${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$GATEWAY${ENDCOLOR}"

RAM_TOTAL=$(free | grep "Mem:" | awk '{printf "%0.3f\n", $2/1024/1024}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}RAM_TOTAL${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$RAM_TOTAL${ENDCOLOR}"

RAM_USED=$(free | grep "Mem:" | awk '{printf "%0.3f\n", $3/1024/1024}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}RAM_USED${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$RAM_USED${ENDCOLOR}"

RAM_FREE=$(free | grep "Mem:" | awk '{printf "%0.3f\n", $4/1024/1024}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}RAM_FREE${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$RAM_FREE${ENDCOLOR}"

SPACE_ROOT=$(df | grep "mapper" | awk '{printf "%0.2f\n", $2/1024}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}SPACE_ROOT${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$SPACE_ROOT${ENDCOLOR}"

SPACE_ROOT_USED=$(df | grep "mapper" | awk '{printf "%0.2f\n", $3/1024}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}SPACE_ROOT_USED${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$SPACE_ROOT_USED${ENDCOLOR}"

SPACE_ROOT_FREE=$(df | grep "mapper" | awk '{printf "%0.2f\n", $4/1024}') #gotovo
echo -e "${COLOR_FON1}${COLOR1}SPACE_ROOT_FREE${ENDCOLOR} = ${COLOR_FON2}${COLOR2}$SPACE_ROOT_FREE${ENDCOLOR}" 

echo -en "\n"

echo "Column 1 background = $column1_background (${names[$column1_background]})"
echo "Column 1 font color = $column1_font_color (${names[$column1_font_color]})"
echo "Column 2 background = $column2_background (${names[$column2_background]})"
echo "Column 2 font color = $column2_font_color (${names[$column2_font_color]})"
}