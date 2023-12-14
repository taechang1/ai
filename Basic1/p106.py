ticke=2000
from datetime import datetime
birth=int(input("태어난 년도는?"))
age= datetime.today().year - birth
if datetime.today().year< datetime.today().year+1:
 print(f"올해는{datetime.today().year}입니다")
 print("입력이 잘못 되었네요")
else:
  if age >=61:
   ticke=0
  elif 40<=age<=60:  
    ticke=1000
  elif 30<=age<40:
    ticke=1500
  elif 20<=age<30:
   ticke=1000
  elif 10<=age<20:
   ticke=2500
  elif 0<=age<=10:
   ticke=0



 
print("나이%d세"%age)
print(f"입장료는{ticke}원입니다")