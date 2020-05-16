# cafelog

コーヒー焙煎の記録。Python, Julia で分析

## 焙煎データ

### roasts.csv

id,year,month,day,bean,crop,weight,time,eject,roast
ID,焙煎年,月,日,豆の種類,クロップ年,重量(g),焙煎時間(m),調整時間(s),焙煎度合い(1~5)

### roast-timeseries.csv

roastid,min,sec,temperature
roastID,残り分,残り秒,温度
