#!/usr/bin/python3
import pandas as pd
import sys

input_csv = sys.argv[1]
output_dir = sys.argv[2]

df = pd.read_csv(input_csv, header=None, names=['id','sendTime','sendTimePersian', 'senderName', 'senderUsername', 'type', 'content'], dtype={'content': object})
output_file = f"{output_dir}/{input_csv.split('/')[-1].split('.')[0]}.parquet"
df.to_parquet(output_file)
