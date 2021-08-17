import pandas as pd
import sys
import pathlib
import os


path_To_Data = pathlib.PurePath('data/titanic.csv')
# Read data into Pandas data frame
titanic = pd.read_csv(path_To_Data)

print('df loaded...')
print(titanic.head(8))

ages = titanic['Age']

age_sex = titanic[["Age", "Sex"]]

print(age_sex)

# I’m interested in the Titanic passengers from cabin class 2 and 3.
class_23 = titanic[titanic["Pclass"].isin([2, 3])]
print(class_23)


print('...')