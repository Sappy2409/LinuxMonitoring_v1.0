#!/bin/bash

function process(){
    TOTAL_NUMBER_OF_FOLDERS=$(find $1 -type d | wc -l)
    TOP5_BIG_FOLDERS=$(du -Sh $1 | sort -n -r | head -n 5 | cat -n | awk '{print $1 " -",$3, $2}')
    TOTAL_NUMBER_OF_FILES=$(find $1 -type f | wc -l)
    CONFIGURATION=$(find $1 -type f | grep .conf | wc -l)
    TEXT=$(find $1 -type f | grep .txt | wc -l)
    EXECUTABLE=$(find $1 -type f -executable | wc -l)
    LOG=$(find $1 -type f | grep .log | wc -l)
    ARCHIVE=$(find $1 -type f | grep -E '.rar .zip .7z .tar' | wc -l)
    SYMBOLIC=$(find $1 -type l | wc -l)
    TOP10_MAX_SIZE=$(find $1 -type f -exec du -Sh {} + | sort -rh | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
    TOP10_EXECUTE=$(find $1 -type f -executable -exec du -h {} + | sort -hr | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
}