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
model.5<-lm(income~HS.Grad,data = data(.frame(staTES.X77),)
# (3) (2)에서 예측한 1인당 소득과 실제 state.x77 데이터셋의 1인당 소득(Income)이 얼마나 차이가 나는지 보이시오. (예측값, 실제값, 예측값-실제값을 나타낸다.)
summary(model.6)
