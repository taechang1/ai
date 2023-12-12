# 변수연습
_name="홍길동"
_name1kk="이순신"
_name="이순신"
print(_name)
print(type(_name)) # type 함수는 자료형을 보여준다.
number=10
print(type(number))
pi=3.14
ok=True
print(type(pi))
print(type(ok))
number="백점"
print(number)
print(type(number))
# 사칙연산
str1="abc"
str2="def"
print(str1+str2)
#print(str1-str2)
#print(str1*str2)
print(str1*3) # str1을 3번 반복해라
#print(str1/3)
str3=str1+str2
print(str3)
number=1;number2=2;number3=3
number4=number+number2
number5=number2*number3
number6=number2**number3
number7=number3/number2
number8=number3%number2
print(number,number2,number3,sep="--")
print(number4,number5,number6,sep="==")
print(number7,number8,sep="-->")
ok1=True#1
ok2=False#0
ok3=ok1+ok2#or 연산1+0=1
ok4=ok1-ok2#??1-0=1
ok5=ok1*ok2#and연산
#ok6=ok1/ok2
print(ok1,ok2,ok3,ok4,ok5,sep=">>")
print(-26.35+8.7*(-21.0))
a=100//25
print(3/5)
print(a)
print("%.2f"%a)
b=100//3#나누기 소숫점 아래 절삭
print(b)
d=2**4+ 5%3
print(d)
s="안녕하세요. 반갑습니다."
print(s[3:5])#3 <= index number<5
print(s[:6])#0<= index number<6
print(s[7:])#0<= index number<끝까지
print(s[:])#0<= index number<끝까지
jumin="061225-4098745"
#성별 추출하기 4
#생일 추출하기 2006년 12월 25일
year=jumin[0:2] 
month=jumin[2:4] 
day=jumin[4:6]
print("20",year,"년",month,"월",day,"일",sep="" )
print(len(jumin))#len ()길이 구하기

a=100
#print(len(a))숫자에서 len사용 못함

print("-"*100)

a="100"
b="abc"
c=(str)(a)+(int)(b) # "100"-숫자 바꾸기>100
print(type(c))
print(c)#300

