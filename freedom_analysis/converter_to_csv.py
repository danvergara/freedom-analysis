import pandas as pd

for i in range(2013, 2021):
    data_xls = pd.read_excel(f"data/index{i}_data.xls")
    data_xls.to_csv(f"data/index{i}_data.csv", encoding='utf-8')
