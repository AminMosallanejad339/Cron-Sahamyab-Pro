#!/usr/bin/bash
/usr/bin/curl -s -H "User-Agent:Chrome/137.0" https://www.sahamyab.com/guest/twiter/list?v=0.1 | \
/usr/bin/jq '.items[] | [.id, .sendTime, .sendTimePersian, .senderName, .senderUsername, .type, .content] | join(",") ' > /home/ikarus/Proj/Sahamyab_Cron/stage/step1/$(date +%s).csv
