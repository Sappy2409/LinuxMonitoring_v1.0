#!/bin/bash

chmod +x info.sh

source info.sh

info

echo "Записать данные в файл? Y/N"
read result
if [[ $result = 'y' || $result = 'Y' ]]
then
    date=$(date +"%d_%m_%Y_%H_%M_%S")
    info > "${date}.status"
fi

