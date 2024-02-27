#!/bin/bash

chmod +x settings.conf
chmod +x printing.sh
chmod +x colors.sh

source settings.conf
source printing.sh
source colors.sh
if [[ -z "$column1_background" || -z "$column1_font_color" || -z "$column2_background" || -z "$column2_font_color" ]]
then 
    column1_background=3
    column1_font_color=4
    column2_background=5
    column2_font_color=2
fi

if [[ $column1_background != [1-6] || $column1_font_color != [1-6] || $column2_background != [1-6] || $column2_font_color != [1-6] ]]
then
    echo "Введены неподходящие параметры. Перезапустите скрипт и введите числа от 1 до 6"
elif [[ $column1_background == $column1_font_color || $column2_background == $column2_font_color ]]
then
    echo "Значения цвета текста и фона совпадают. Перезапустите скрипт и выберите другое значение для цвета текста или фона"
else
COLOR_FON1=$(BG1 $column1_background)
COLOR1=$(TXT1 $column1_font_color)
COLOR_FON2=$(BG2 $column2_background)
COLOR2=$(TXT2 $column2_font_color)
ENDCOLOR="\e[0m"
paint
fi
