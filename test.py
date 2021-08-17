import pandas as pd
import sys
import pathlib
import os


path_To_Data = pathlib.PurePath('data/maine.csv')
# Read data into Pandas data frame
birb_Data = pd.read_csv(path_To_Data)

print('df loaded...')

# printing some basic info about the data frame
print(birb_Data.info)

print('...')
