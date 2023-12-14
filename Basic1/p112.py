#3-2
month=input("월을 숫자로 입력하세요:")
if month=="3"or month=="4"or month=="5":
  print("%s월은 봄입니다."%month)
if month=="6"or month=="7"or month=="8":
  print("%s월은 여름입니다."%month)
if month=="9"or month=="10"or month=="11":
  print("%s월은 가을입니다."%month)
if month=="12"or month=="1"or month=="2":
  print("%s월은 겨울입니다."%month)
#3-3
a=input("주민번호 뒷자리 첫 번째 숫자를 입력해주세요:")
if a==1 or 3:
  print("남성입니다!")
else:
 if a==2 or 4:
  print("여성입니다!")
  #3-4
  char=input("영문 대문자 또는 소문자 하나를 입력하세요:")
  char2=char.upper()

  if char2=="A"or"E"or"I"or"O"or"U":
    print("%s->모음"%char)
  else:
    print("%s->자음"%char)
  #C-5