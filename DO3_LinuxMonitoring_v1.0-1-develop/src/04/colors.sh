#!/bin/bash

#цвет фона
function BG1(){
WHITE_FON="\033[107m"
RED_FON="\033[41m"
GREEN_FON="\033[42m"
BLUE_FON="\033[44m"
PURPLE_FON="\033[45m"
BLACK_FON="\033[40m"
case "$1" in
1) echo $WHITE_FON;;
2) echo $RED_FON;;
3) echo $GREEN_FON;;
4) echo $BLUE_FON;;
5) echo $PURPLE_FON;;
6) echo $BLACK_FON;;
esac
}

function BG2(){
WHITE_FON="\033[107m"
RED_FON="\033[41m"
GREEN_FON="\033[42m"
BLUE_FON="\033[44m"
PURPLE_FON="\033[45m"
BLACK_FON="\033[40m"
case "$1" in
1) echo $WHITE_FON;;
2) echo $RED_FON;;
3) echo $GREEN_FON;;
4) echo $BLUE_FON;;
5) echo $PURPLE_FON;;
6) echo $BLACK_FON;;
esac
}

#цвет текста
function TXT1(){
WHITE="\033[97m"
RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
PURPLE="\033[35m"
BLACK="\033[30m"
case "$1" in
1) echo $WHITE;;
2) echo $RED;;
3) echo $GREEN;;
4) echo $BLUE;;
5) echo $PURPLE;;
6) echo $BLACK;;
esac
}

function TXT2(){
WHITE="\033[97m"
RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
PURPLE="\033[35m"
BLACK="\033[30m"
case "$1" in
1) echo $WHITE;;
2) echo $RED;;
3) echo $GREEN;;
4) echo $BLUE;;
5) echo $PURPLE;;
6) echo $BLACK;;
esac
}
