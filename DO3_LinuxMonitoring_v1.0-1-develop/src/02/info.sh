#!/bin/bash

function info() {
HOSTNAME=$(hostname) #готово
echo "HOSTNAME = $HOSTNAME"

TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}') #gotovo
echo "TIMEZONE = $TIMEZONE"

USER=$(whoami) #gotovo
echo "USER = $USER"

OS=$(hostnamectl | grep "Operating System" | awk '{print $3, $4, $5}') #gotovo
echo "OS = $OS"

DATE=$(date '+%d %b %Y %H:%M:%S') #готово
echo "DATE = $DATE"

UPTIME=$(uptime -p) #gotovo
echo "UPTIME = $UPTIME"

UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}') #gotovo
echo "UPTIME_SEC = $UPTIME_SEC"

IP=$(ifconfig | grep "inet " | awk '{print $2}' | cut -d '/' -f1 | tail -1) #gotovo
echo "IP = $IP"

MASK=$(ifconfig | grep "inet " | awk '{print $4}' | cut -d '/' -f1 | tail -1) #gotovo
echo "MASK = $MASK"

GATEWAY=$(ip route | grep "default" | awk '{print $3}') #gotovo
echo "GATEWAY = $GATEWAY"

RAM_TOTAL=$(free | grep "Mem:" | awk '{printf "%0.3f\n", $2/1024/1024}')
echo "RAM_TOTAL = $RAM_TOTAL"

RAM_USED=$(free | grep "Mem:" | awk '{printf "%0.3f\n", $3/1024/1024}')
echo "RAM_USED = $RAM_USED"

RAM_FREE=$(free | grep "Mem:" | awk '{printf "%0.3f\n", $4/1024/1024}')
echo "RAM_FREE = $RAM_FREE"

SPACE_ROOT=$(df | grep "mapper" | awk '{printf "%0.2f\n", $2/1024}') #gotovo
echo "SPACE_ROOT = $SPACE_ROOT"

SPACE_ROOT_USED=$(df | grep "mapper" | awk '{printf "%0.2f\n", $3/1024}') #gotovo
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"

SPACE_ROOT_FREE=$(df | grep "mapper" | awk '{printf "%0.2f\n", $4/1024}') #gotovo
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE" 
}