import pandas as pd
import sys
import pathlib
import os


path_To_Data = pathlib.PurePath('data/maine.csv')
# Read data into Pandas data frame
birb_Data = pd.read_csv(path_To_Data)

print('df loaded...')

# drop 'route_totals' column 
birb_Data_Trimmed = birb_Data.drop(['route_totals'], axis=1)

# drop duplicate of 'X' column
df2 = birb_Data_Trimmed.head(6).drop(['ID'], axis=1)
print(df2)

df3 = df2.melt(id_vars=["X", "RouteDataID", "CountryNum","StateNum","Route", "RPID", "Year", "AOU"], 
        var_name="Stop", 
        value_name="Value")


print(df3.head(6))


print('...')
