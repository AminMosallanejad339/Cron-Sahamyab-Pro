#!/usr/bin/bash
sleep 20
stage1="/home/ikarus/Proj/Sahamyab_Cron/stage/step1"
stage2="/home/ikarus/Proj/Sahamyab_Cron/stage/step2"
fname="$stage2/$(date +%Y-%m-%d-%H).csv"
logfile=/home/ikarus/Proj/Sahamyab_Cron/logs/step2.log

echo "Begin at $(date)" >> $logfile
for i in $(ls $stage1); do
    current="$stage1/$i"
    sed -i "s/\"//g" $current
    cat $current >> $fname
    rm $current
    echo "Processed $i" >> $logfile
done
echo "Successful" >> $logfile
