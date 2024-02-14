#단순선형 회귀 분석
#문제 주행속도와 제동거리사이의 회귀식 구하기
head(cars)
class(cars)
str(cars)
dim(cars)
plot(dist~speed,data = cars)
#산점도에서 선형관계가 분명하다
#주행속도가 증가할수록 제동거리도 증가한다
#형식 회귀모델 구하는 함수 lm(종속변수~독립변수,데이터셋)
#회귀식은 y=wx+b
modl <- lm(dist~speed,cars)
modl
coef(modl)[1]#b intercept 값이 b이다
coef(modl)[2]#speed 3.932502 값이 w이다
#그래서 y= 3.932402Xspeed -17.579095 회귀식이 구해진다
#문 속도가 30일 때 제동거리는
y<-3.932402*30-17.579095
y
#문  속도가 50일때 제동거리는
y<-3.932402*50-17.579095
y
#문  속도가 70일때 제동거리는
y<-3.932402*70-17.579095
y

#오차 꼭있다 인정하기
#예상제동거리 실제 제동거리 오차구하기
head(cars)
speed<-cars[,1]
speed
b<-coef(modl)[1]
w<-coef(modl)[2]
pred<-w*speed+b#예상제동거리(회귀식에 의한제동거리)
pred


#예상제동거리 실제 제동거리 오차구하기를 데이터 프레임으로 만들기
compare<-data.frame(pred,cars[,2],pred-cars[,2])
compare
colnames(compare)<-c('예상제동거리','실제제동거리','오차')
compare

#1loblolly 데이터셋에서 age를 이용해 height를 예측하는 단순선형 회귀 모델을 만드시오
head(Loblolly)
dim(Loblolly)
str(Loblolly)
#종속변수는 Y값 height 독립변수 (x)는 age
#1단계 회기식이 가능한지 산점도를 그려서 확인하기
plot(pressure~temperature,data = pressure,col='blue')
#산점도에 대한 결과 분석 선형 관계가 분명하다
#2단계 회기식을 구하기 y=wx+b
model.4<-lm(pressure~temperature,pressure)
model.4
w<-coef(model.4)[2]
b<-coef(model.4)[1]

#3단계 온도가가 65,95,155
temperature<-65
y.10<-w*temperature+b
y.10-49.59158 
temperature<-95
y.15<-w*temperature+b
y.15
temperature<-155
y.20<-w*temperature+b
y.20
temperature<-300
y.20<-w*temperature+b
y.20


# 다중선형 회귀 분석
install.packages('car')
library(car)
head( Prestige ) # 명성, 평판, census-통계조사
dim( Prestige )
class( Prestige )
str( Prestige )

# 문제 연봉 예측하기 ( 교육연수-education, 여성비율-women, 직군에 대한 평판도-prestige)
# 종속변수- 연봉-income,  
# 독립변수 - 교육연수-education, 여성비율-women, 직군에 대한 평판도-prestige

# 데이터셋은 1열~4열
newData <-  Prestige[ , 1:4 ]
head(newData)

# 산점도로 변수간의 관계 확인
plot( newData, col='blue')

# 회귀식 구하기  lm(종속변수~독립변수1 + 독립변수2 + 독립변수3, 데이터셋  )
model.1 <- lm(income~education + women + prestige, newData  )
model.1
# 회귀식 y = 177.2 X education + ( -50.9 ) X women + 141.4 X prestige + (-253.8)
# 해당 회귀식의 요약을 보면 
summary( model.1 )


# 다중선형 회귀모델에서 변수 선택하기
install.packages( 'MASS' )
library( MASS )
newData2 <-  Prestige[ , 1:4 ]
head( newData2 )
model.2 <- lm( income~women + prestige + education, newData2 )
model.3 <- stepAIC( model.2 ) # 독립변수 선택 진행

# 회귀식- 다른 모델을 만들어 줌 
# y =  ( -50.9 ) X women + 141.4 X prestige + (-253.8)
summary( model.3 ) # 0.6327 독립변수 2개 이용 
summary( model.1 ) # 0.6323 독립변수 3개 이용

# 2개 모델 만들었다. model.1와 model.3 중에서  model.3이 더 잘한 모델이다. 왜? 독립변수가 적도 설명력도 높으니깐

# 예측하기
newData2
# 문)  education 12.26 women 4.02 prestige 69.1일때 income예측하기
# model.1으로 예측하기
education <- 12.26; women <- 4.02; prestige <- 69.1
y1 = 177.2 * education + ( -50.9 ) * women + 141.4 * prestige + (-253.8)

# model.3으로 예측하기
y3 = ( -50.9 ) * women + 141.4 * prestige + (-253.8)

# 실제값은 25879
y1 # 예측값 11484.79
y3 # 예측값 9312.322

# 4. state.x77 데이터셋에 대해 다음의 문제를 해결하는 R 코드를 작성하시오.
head(state.x77)
dim(state.x77)
str(state.x77)
class(state.x77)
# (1) 문맹률(Illiteracy)과 고등학교 졸업률(HS.Grad))로 1인당 소득(Income)을 예측하는 다중선형 회귀모델을 만드시오.

#종속 변수 income
model.4<-lm(income~Illitercay+HS.Grad,data=data.frame(state.x77))

# (2) 다중선형 회귀모델을 이용하여 state.x77 데이터셋의 문맹률(Illiteracy)과 인구수(Population)로 1인당 소득(Income)을 예측하시오.
model.5<-lm(income~HS.Grad,data = data(.frame(staTES.X77),))
# (3) (2)에서 예측한 1인당 소득과 실제 state.x77 데이터셋의 1인당 소득(Income)이 얼마나 차이가 나는지 보이시오. (예측값, 실제값, 예측값-실제값을 나타낸다.)
summary(model.6)
library(MASS)
model.5.1<-stepAIC(model.5)
summary(model.5.1)
y= -0/114056*crim+0.045742*zn -16.469153*nox+.... +36.620311
# 6. mtcars 데이터셋에서 다른 변수들을 이용하여 연비(mpg)를 예측하는 다중 회귀모델을 만드시오.
head(mtcars)
class(mtcars)
str(mtcars)
#종속변수: 연비 독립변수 cyl ~carb
#회귀식 구하기
model.6<-lm(mpg~. ,data = mtcars)

# (1) 전체 변수를 이용하여 연비(mpg)를 예측하는 회귀모델을 만들고 회귀식을 나타내시오.

# (2) 연비(mpg)를 예측하는 데 도움이 되는 변수들만 사용하여 예측하는 회귀모델을 만들고 회귀식을 나타내시오.
summary(model.6)
summary(model.6.1)
#결과 분석 보고서 독립변수를 모두 사용한 6의 설명력은 0.8066

# (3) (1), (2)에서 만든 예측모델의 설명력(Adjusted R-squared)을 비교하시오.
summary(model.5)# 0.7291
summary(model.5.1)#0.7299
#--------------------
#로지스틱 회귀 분석
#y값이 범주형인 것 분석하기 (범주형의 자료를 정수혀으로 변환함 월 -1 회 -2 , 동 -1 서 -2 남 -3 북 -4 setosa-1 vers)
#--------------------

#예측하기  품종
head(iris)
class(iris)
dim(iris)
str(iris)
iris.new <-iris
#범주형 자료를 숫자로 변환하기
iris.new$Species<-as.integer(iris$Species)
str(iris.new)
tail(iris.new)

#회귀식을 구하기
sepal.widh
#종속 변수 Species 돌립 변수 sepal.width petal.Length width
model.7<-glm(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.width,data = iris.new)
model.7<-glm(Species~. , data=iris.new)
summary(model.7)
#회귀식을 써보기
y=0.22865*Petal.Length
y# 3.449265
#predict( )함수로 품종을 예측하기
unknown<-data.frame(rbind(c(5.1,3.5,1.4,0.2)))
unknown
pred<-predict(iris.new, unknown)
help(predict)

# 7. UCLA 대학원의 입학 데이터를 불러와서 mydata에 저장한 후 다음 물음에 답하시오. 
# 
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
mydata 
head(mydata)
class( mydata )
str( mydata)
dim( mydata )
# (1) gre, gpa, rank를 이용해 합격 여부(admit)를 예측하는 로지스틱 모델을 만드시오(0: 불합격, 1:합격).
# 독립변수 gre, gpa, rank, 종속변수 admit
# 회귀식 (회귀 모델)
model.admit <- glm( admit~gre + gpa + rank, data=mydata ) 
summary( model.admit )


# (2) mydata에서 합격 여부(admit)를 제외한 데이터를 예측 대상 데이터로 하여 (1)에서 만든 모델에 입력하여 합격 여부를 예측하고 실제값과 예측값을 나타내시오.
head( mydata )
# 예측값에 넣을 값 만들기
pred.val <- data.frame( mydata[ , 2:4] )
head( pred.val )
# predict() 예측값 구하기
pre <- predict(  model.admit,  pred.val ) # predict( 회귀모델명, 예측하려는값이 들어 있는 데이터셋)
pre
length( pre )
head( pre ) # 모델로 예측값 구한 것 
pre <- round( pre, 0 )
head( pre ) # 0 0 1 0 0 0
tail( pre ) # 0   0   0   0   0   0 
# 실제값은
head( mydata$admit ) # 0 1 1 1 0 1
tail( mydata$admit ) # 1 0 0 0 0 0

result <- data.frame(  예측값=pre, 실제값 = mydata$admit, 오차= pre - mydata$admit )
result
# 맞게 예측한 것의 갯수?
sum( result$예측값 == result$실제값)
# 틀리게 예측한 것의 갯수?
sum( result$예측값 != result$실제값)

# (3) 만들어진 모델의 예측 정확도를 나타내시오.
acc <- mean( result$예측값 == result$실제값)
acc 

 
# 8. mlbench 패키지의 PimaIndiansDiabetes 데이터셋은 17개의 변수로 당뇨 여부(diabetes)를 예측하기 위한 정보를 담고 있다. 17개의 변수들을 이용하여 당뇨 여부(diabetes)를 예측하는 로지스틱 회귀모델을 만드시오.
 
library(mlbench)
 
 
data(PimaIndiansDiabetes) # 데이터셋 불러오기
head(PimaIndiansDiabetes)
str(PimaIndiansDiabetes)
dim(PimaIndiansDiabetes)
# (1) set.seed(100)을 실행한 후 전체 데이터(관측값)에서 임의로 60%를 추출하여 train에 저장하고 나머지 40%는 test에 저장하시오.
ds<-(PimaIndiansDiabetes)#pos(양성),neg(음성)
ds$diabetes<-as.integer(ds$diabetes)
head(ds)
#2단계 임의로 60%를 추출
set.seed(100) 
train.idx<-sample(1:nrow(ds),nrow(ds)*0.6)
head(train.idx)
train<-ds[train.idx, ]
head(train)

test<-ds[train.idx, ]
head(test)
# (2) train의 데이터로 당뇨여부(diabetes)를 예측하는 로지스틱 회귀모델을 만들고 회귀식을 나타내시오.(당뇨여부(diabetes) 변수는 팩터 타입이므로 정수로 바꾸어야 모델을 만들 수 있다.)
## 로지스틱 회귀 모델을 만들기  
model.dia<-glm(diabetes~., data = train)
summary(model.dia)
y=0.0211082*pregnant+0.0065026*glucose-0.0023262*pressure+0.0123455*mass+0.1599404*pedigree+0.1158979

# (3) 회귀모델에 대해 test의 데이터를 입력하여 당뇨여부(diabetes)를 예측하시오.
class(test)
pred<-predict(model.dia,test)
head(pred)
head(ds)
pred<-round(pred,0)
head(pred)
ds[1:20,]
#(4) pred.val#(4) 예test#(4) 예측한 값과 실제 당뇨여부를 비교하여 모델의 정확도(accuracy)가 어느 정도인지 확인하시오
acc<-mean(pred==test$diabetes)
acc
#9. mlbench 패키지의 Glass 데이터셋은 9개의 변수로 잔디의 종류(Type)를 예측하기 위한 정보를 담고 있다. 9개의 변수들을 이용하여 잔디의 종류(Type)를 예측하는 로지스틱 회귀모델을 만드시오.
library(mlbench)
data(Glass)
dim(Glass)
class(Glass)
str(Glass)
head(Glass)
# (1) set.seed(100)을 실행한 후 전체 데이터(관측값)에서 임의로 60%를 추출하여 train에 저장하고 나머지 40%는 test에 저장하시오.
set.seed(100)
train.idx<-sample(1:nrow(Glass),nrow(Glass)*0.6)
train<-Glass[train.idx]
test<-Glass[-train.idx]
train
# (2) train의 데이터로 잔디의 종류(Type)를 예측하는 로지스틱 회귀모델을 만들고 회귀식을 나타내시오.(잔디의 종류(Type) 변수는 팩터 타입이므로 정수로 바꾸어야 모델을 만들 수 있다.)
model.glass<-glm(train$Type~.,data = train)
summary(model.glass)
y=130.69743*RI+0.53712*Na=0.52967*Mg+...+-233.21655
# (3) 회귀모델에 대해 test의 데이터를 입력하여 잔디의 종류(Type)를 예측하시오.
pred<-predict(model.glass,test)
pred
pred<-round(pred,0)
head(pred)
head(test)
# (4) 예측한 값과 실제 잔디의 종류를 비교하여 모델의 정확도(accuracy)가 어느 정도인지 확인하시오.
acc<-mean(pred==test$Type)
acc
#보고서