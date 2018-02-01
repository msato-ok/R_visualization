##CSVを使う方法



df <- read.csv("data/sales_temp.csv",header=T)




 Jan <- (df$month == 1)

 Feb <- (df$month == 2)

 Mar <- (df$month == 3)

 Apr <- (df$month == 4)

 May <- (df$month == 5)

 Jun <- (df$month == 6)

 Jul <- (df$month == 7)

 Aug <- (df$month == 8)

 Sep <- (df$month == 9)

 Oct <- (df$month == 10)

 Nov <- (df$month == 11)

 Dec <- (df$month == 12)



##平均と標準偏差の配列

m = c(mean(df[Jan,"sales"]),mean(df[Feb,"sales"]), mean(df[Mar,"sales"]), mean(df[Apr,"sales"]), mean(df[May,"sales"]), mean(df[Jun,"sales"]), mean(df[Jul,"sales"]), mean(df[Aug,"sales"]), mean(df[Sep,"sales"]), mean(df[Oct,"sales"]), mean(df[Nov,"sales"]), mean(df[Dec,"sales"]))



s = c(sd(df[Jan,"sales"]), sd(df[Feb,"sales"]), sd(df[Mar,"sales"]), sd(df[Apr,"sales"]), sd(df[May,"sales"]), sd(df[Jun,"sales"]), sd(df[Jul,"sales"]), sd(df[Aug,"sales"]), sd(df[Sep,"sales"]), sd(df[Oct,"sales"]), sd(df[Nov,"sales"]), sd(df[Dec,"sales"]))

temp = c(mean(df[Jan,"temperature"]), mean(df[Feb,"temperature"]), mean(df[Mar,"temperature"]), mean(df[Apr,"temperature"]), mean(df[May,"temperature"]), mean(df[Jun,"temperature"]), mean(df[Jul,"temperature"]), mean(df[Aug,"temperature"]), mean(df[Sep,"temperature"]), mean(df[Oct,"temperature"]), mean(df[Nov,"temperature"]), mean(df[Dec,"temperature"]))


s_temp = c(sd(df[Jan,"temperature"]), sd(df[Feb,"temperature"]), sd(df[Mar,"temperature"]), sd(df[Apr,"temperature"]), sd(df[May,"temperature"]), sd(df[Jun,"temperature"]), sd(df[Jul,"temperature"]), sd(df[Aug,"temperature"]), sd(df[Sep,"temperature"]), sd(df[Oct,"temperature"]), sd(df[Nov,"temperature"]), sd(df[Dec,"temperature"]))

##余白を開けた

par(oma = c(0, 0, 0, 2))

 plot(m, ylim = range(min(m)*0.8, max(m)*1.2), xlab = "Month", ylab = "Yen", type = "l",col = "blue",lwd = 3)

   for (i in 1:12){

   ##丸点をつけた

     points(i,m[i],col = "blue")

     lines(i,m[i],col = "blue")

     points(i,temp[i],col = "red")

     lines(i,temp[i],col = "red")

	 ##標準偏差のブレを表した

     arrows(i, m[i] + s[i], i, m[i] - s[i], angle = 90, length = 0.1,col = "blue")

     arrows(i, m[i] - s[i], i, m[i] + s[i], angle = 90, length = 0.1,col = "blue")

     arrows(i, temp[i] + s_temp[i], i, temp[i] - s_temp[i], angle = 90, length = 0.1,col = "red")

     arrows(i, temp[i] - s_temp[i], i, temp[i] + s_temp[i], angle = 90, length = 0.1,col = "red")

     }

   par(new =T)

 #最高気温をプロット

  plot(temp, type = "l",axes = FALSE, xlab = "", ylab = "", col = 'red',lwd = 3)


  ##Tempを軸に記述

  mtext("Temp",side = 4, line = 3)

##余計なものを


for (i in 1:12){

  ##丸点をつけた


     points(i,temp[i],col = "red")

     lines(i,temp[i],col = "red")

	 ##標準偏差のブレを表した


     arrows(i, temp[i] + s_temp[i], i, temp[i] - s_temp[i], angle = 90, length = 0.1,col = "red")

     arrows(i, temp[i] - s_temp[i], i, temp[i] + s_temp[i], angle = 90, length = 0.1,col = "red")

     }


  ##軸を変えた

 axis(4)

 ##凡例記述

legend("topleft", legend = c("Yen", "Temp"), col = c("blue","red"),lty = 1)