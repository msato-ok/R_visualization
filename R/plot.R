##CSVを使う方法

##データフレーム読み込み

df <- read.csv("data/sales_temp.csv",header=T)

 ##（売上と気温からなる）新しいデータフレームを作成　データフレームの作成参照　http://rplus.wb-nahce.info/rsemi_stat_basic/r_nijigendata.html

 soukan <- data.frame(x=df["temperature"], y=df["sales"])


##散布図をプロット

plot(soukan,xlab = "Temp", ylab = "Yen",col="blue")
