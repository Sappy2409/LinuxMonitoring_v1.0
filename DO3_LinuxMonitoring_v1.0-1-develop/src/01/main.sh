#!/bin/bash

param=$1

if [[ $param =~ ^[0-9]+$ ]]
then
    echo "Некорректный ввод. Требуется текстовое значение"
else
    echo $param
fi