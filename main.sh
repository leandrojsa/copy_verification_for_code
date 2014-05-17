#!/bin/bash

#firt argument extension of file (without dot)
#second argument directory of file

extension=$1
dir=$2
char_comment=\;
limit_percent=0.55

cd $dir

for file in `ls *.${extension}`
do
    echo $file
    total_lines=`cat $file | sed '/^$/d' | wc -l`
    #TODO:    `cat $file | sed '/^\s*\VARIABLE COMMENT_CHAR/d;/^\s*$/d' | wc -l`
    echo $total_lines
    for cmp_file in `ls *.${extension}`
    do
        if [ $cmp_file != $file ]
        then
            num_lines_diff=`sdiff -E -i -B -b -s $file $cmp_file | wc -l`
            percent=$(echo "($num_lines_diff/$total_lines)" | bc -l)
            suspect_file=$(echo $percent '<=' $limit_percent | bc -l)
            if [ $suspect_file -eq 1 ]
            then
                echo "\tSimilaridade supeita: $cmp_file"
                printf "\t\t%.3f\n" $percent
            fi
        fi        
    done    
done



