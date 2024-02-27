#!/bin/bash

chmod +x printing.sh
chmod +x colors.sh

source printing.sh
source colors.sh

if [[ $1 != [1-6] || $2 != [1-6] || $3 != [1-6] || $4 != [1-6] ]]
then
    echo "Введены неподходящие параметры. Перезапустите скрипт и введите числа от 1 до 6"
elif [[ $1 == $2 || $3 == $4 ]]
then
    echo "Значения цвета текста и фона совпадают. Перезапустите скрипт и выберите другое значение для цвета текста или фона"
elif [[ $# != 4 ]]
then
    echo "Введено неверное количество параметров. Перезапустите скрипт и введите 4 параметра"
else
COLOR_FON1=$(BG1 $1)
COLOR1=$(TXT1 $2)
COLOR_FON2=$(BG2 $3)
COLOR2=$(TXT2 $4)
ENDCOLOR="\e[0m"
paint
fi
