'''
kor=input("국어성적을 입력하세요")
국어성적을 입력하세요=85
eng=input("영어성적을 입력하세요")
영어성적을 입력하세요=87
math=input("수학성적을 입력하세요")
수학성적을 입력하세요=99
sum=int(kor)+int(eng)+int(math)
avg=sum/3
print("합계:sum,평균:,%.2f%d"%(sum,avg))
'''
'''
#81page
price=3000
num=3
pay=10000
change=pay-price*num
print()
print()
'''

#83탄생년을 입력받아 나이계산하기
# name=input("이름은?")
# brith=int(input("년도는?"))
# age=datetime.today().year-brith
# print(f"{name}니의 나이는 {age}세입니다")
#생일 달을 입력하기 

from datetime import datetime
print(datetime.today().year)
from datetime import datetime
year=input("년은?")
month=input("월은")
day=input("일은")
year= datetime.today.year
month= datetime.today.year
day=datetime.today.year
weekday=datetime.today().weekday()
print(year,month,day,weekday,sep=".")

if weekday==0:
  weekdayHan="월"
elif weekday==1:
  weekdayHan="화"
elif weekday==2:
  weekdayHan="수"
elif weekday==3:
  weekdayHan="목"
elif weekday==4:
  weekdayHan="금"
elif weekday==5:
  weekdayHan="토"
elif weekday==6:
  weekdayHan="일"
  print(f"{weekdayHan}요일입니다")
  #87
width=10
height=20
length=width=width*2+height*2#사각형 넓이
area=width*height
print(f"사각형 둘레는 {length}")
print(f"사각형 넓이{area}")
if area>=100:
 print("큰사각형 이네요")
else :
 print("작은사각형 이네요")
 