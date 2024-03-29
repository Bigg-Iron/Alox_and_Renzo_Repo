import pandas as pd
import sys
import pathlib
import os


path_To_Data = pathlib.PurePath('data/maine.csv')
# Read data into Pandas data frame
maineCSV = pd.read_csv(path_To_Data)

print('df loaded...')

# drop 'route_totals' column. You can get totals using pandas.DataFrame.sum
maineCSV_Trimmed = maineCSV.drop(['route_totals'], axis=1)

# drop duplicate of 'X' column
df2 = maineCSV_Trimmed.drop(['duplicateOf_X'], axis=1)

# Quick check,,, Uncomment the line below to check the first 5 instances of the data frame
# print(df2.head(6))

# Melt Stops into rows
df3 = df2.melt(id_vars=["X", "RouteDataID", "CountryNum", "StateNum", "Route", "RPID", "Year", "AOU"],
               var_name="Stop",
               value_name="Instances of AOU")

# Make sure to always have a check on the data after reading in the data. When displaying a DataFrame, the first and last 5 rows will be shown by default:
print(df3)

# The describe() method provides a quick overview of the numerical data in a DataFrame.
print(df3.describe())

# Save converted csv DataFrame to a compressed folder in data/
compression_opts = dict(method='zip',
                        archive_name='dataFrameTo.csv')  
df3.to_csv('data/newData.zip', index=False,
          compression=compression_opts)

print('...Done...')
