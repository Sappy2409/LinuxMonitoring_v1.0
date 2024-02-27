#!/bin/bash
START_TIME=$(date +%s)
chmod +x process.sh

source process.sh



if [[ $# != 1 ]]
then
    echo "Введите адрес для сканирования"
elif [[ ${1: -1} != "/" ]]
then
    echo "Директория должна заканчивать на "/""
elif [[ ! -d $1 ]]
then 
    echo "Директория отсутствует"
else
    process $1
    echo "Total number of folders (including all nested ones) = $TOTAL_NUMBER_OF_FOLDERS"
    echo -en "TOP 5 folders of maximum size arranged in descending order (path and size): \n$TOP5_BIG_FOLDERS\n"
    echo "Total number of files = $TOTAL_NUMBER_OF_FILES"
    echo "Number of:
Configuration files (with the .conf extension) = $CONFIGURATION
Text files = $TEXT
Executable files = $EXECUTABLE
Log files (with the extension .log) = $LOG  
Archive files = $ARCHIVE  
Symbolic links = $SYMBOLIC"
    echo -en "TOP 10 files of maximum size arranged in descending order (path, size and type): \n$TOP10_MAX_SIZE\n"
    echo -en "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file): \n$TOP10_EXECUTE\n"
    END_TIME=$(date +%s)
    difference=$(( $END_TIME - $START_TIME ))
    echo "Script execution time (in seconds) = $difference"
fi
