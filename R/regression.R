##CSVを使う方法

##データフレーム読み込み

df <- read.csv("data/sales_temp.csv",header=T)

 ##（売上と気温からなる）新しいデータフレームを作成　データフレームの作成参照　http://rplus.wb-nahce.info/rsemi_stat_basic/r_nijigendata.html

 soukan <- data.frame(x=df["temperature"], y=df["sales"])

##散布図をプロット

plot(soukan,xlab = "Temp", ylab = "Yen",col="blue")

##yは売上ベクトル

##xは気温のベクトル　参照サイト　https://stats.biopapyrus.jp/glm/lm-r.html

 y <- soukan$sales

 x <- soukan$temperature

 ##単回帰

 result <- lm(y ~ x)

 ##最小二乗法

 result <- lsfit(x,y)

 ##回帰直線を描画

 abline(result,col="green",lwd = 3)

 ##相関係数を計算

 cor.test(x, y)

 ##結果をまとめる

 summary(result)

 ##相関行列を計算

cor(soukan)

##補助線描画　http://www.proton.jp/main/apps/r/axis-gridline.html

axis(side=1,tck=1.0,lty="dotted")

 axis(side=2,tck=1.0,lty="dotted")
