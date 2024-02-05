favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER','FALL','FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
table(favorite)

table(favorite)/length(favorite)
ds<-table(favorite)
ds

barplot(ds,main = '좋아하는계절')
pie(ds)

fav.color<-c(2,3,1,1,2,3,2,1,1,2,3,2,1,2,3,3)
ds2<-table(fav.color)
colors<-c('green','red','blue')
barplot(ds2,main="좋아하는 색깔",col = colors)
pie(ds2,main="좋아하는 색깔",col = colors)
# 단일변수의 연속형 자료형
weight<-c(60,62,64,65,68,69)
weight.heavy<-c(weight,120)
weight
weight.heavy

#산술평균
mean(weight)
mean(weight.heavy)
#중위수 중앙값
median(weight))
median(weight.heavy)
#질서 평균 
mean(weight,trim=2.0)
mean(weight.heavy,trim=0.2)