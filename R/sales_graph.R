##CSVを使う方法



df <- read.csv("data/sales.csv",header=TRUE)



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

Dec


##平均と標準偏差の配列


m = c(mean(df[Jan,"sales"]),mean(df[Feb,"sales"]), mean(df[Mar,"sales"]), mean(df[Apr,"sales"]), mean(df[May,"sales"]), mean(df[Jun,"sales"]), mean(df[Jul,"sales"]), mean(df[Aug,"sales"]), mean(df[Sep,"sales"]), mean(df[Oct,"sales"]), mean(df[Nov,"sales"]), mean(df[Dec,"sales"]))



##余白を開けた

par(oma = c(0, 0, 0, 2))

 plot(m, ylim = range(min(m)*0.8, max(m)*1.2), xlab = "Month", ylab = "Yen", type = "l",col = "blue",lwd = 3)

   for (i in 1:12){

   ##丸点をつけた

     points(i,m[i],col = "blue")

     lines(i,m[i],col = "blue")

     }

   par(new =T)

  ##軸を変えた

 axis(4)

 ##凡例記述

legend("topleft", legend = c("Yen"), col = c("blue"),lty = 1)
