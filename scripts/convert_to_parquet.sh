#!/usr/bin/bash
stage2="/home/ikarus/Proj/Sahamyab_Cron/stage/step2"
lake="/home/ikarus/Proj/Sahamyab_Cron/lake"
logfile="/home/ikarus/Proj/Sahamyab_Cron/logs/step3.log"

echo "Begin at $(date)" >> $logfile
for i in $(ls $stage2); do
    /usr/bin/python3 /home/ikarus/Proj/Sahamyab_Cron/scripts/convert_to_parquet.py $stage2/$i $lake
    echo "Converted $i to Parquet" >> $logfile
done
echo "Successful" >> $logfile
