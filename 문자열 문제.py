#문자열 인덱싱
#>> letters= 
letters='java programming'
print(letters[5],letters[1],letters[-2])
#2
carNumber="43다6521"
print( carNumber[4:8])
print(carNumber[-4:-1],carNumber[-1],sep="")
#3
string="홀짝홀짝홀짝홀짝"
print(string[1:8:2])

#string[시작인덱스:종료인덱스:증가인덱스]
#4
string="PYTHON"
print(string[5],string[4],string[3],string[2],string[1],string[0],sep="")
print(string[::-1])
#"Y"-->"K"
#string[1]="k"안됀다 문자열 일부분을 수정할수 없다
#치환하기
string=string.replace("Y","K")
print(string)
string=string.replace("N","M")
string="abcdef"
#a-->A
string=string.replace('a','A')
print(string)
string=string.replace('a','A')
print(string)
#print(string)
#5
phone_number="010-888-9999"
phone_number=phone_number.replace("-"," ")
print(phone_number)
#6
phone_number=phone_number.replace(" ","")
print(phone_number)
#7
ur1="http://www.naver.com"
ur1=ur1.split(".")
print(ur1[1])
#8
lang="java python"
#lang[0]="k"#문자열은 부분적으로 수정이 안됨
#9
lang=lang.replace("j","k")
print(lang)
#11
string="abcdefABCDEFabc"
string=string.replace("c","!")
print(string)
#12
a="123"
b="456"
print(a+b)
print(a,b,sep="")
#13
print("Hi"*5)
#14
print("+"*150)
#15
s1="python"
s2="c++"
s3="java"
s4=s1+' '+ s2+ ' '+s3 + ' '
print(s4*6)

#16
name1="홍길동"
age1=25
eyesight1=1.2
name2="이순신"
age2=13
eyesight2=0.8

print("이름:%s나이:%d시력:%.1f"%(name1,age1,eyesight1 ))
print("이름:%s나이:%d시력:%.1f"%(name2,age2,eyesight2 ))

#17 format()
print("이름:{}나이:{}시력:{}".format(name1,age1,eyesight1))
print("이름:{}나이:{}시력:{}".format(name2,age2,eyesight2))
#18--일반적 많이 써요
print(f"이름:{name1}나이:{age1}시력:{eyesight1}")
print(f"이름:{name2}나이:{age2}시력:{eyesight2}")
#19삭제,수정-->치환
total="5,896,124,650"
total=total.replace(",","")
print(type(total))
total=int(total)
print(total+100)
#20
날짜="2024/01(E)1사분기"
날짜=날짜[0:7]
print(f"{날짜}")
print(날짜)

날짜="2024/01(E)1사분기"
날짜=날짜.split("(")
print(날짜[0])
#21
data="       공백저거하기      "
data=data.strip()
print(f"공백제거한값은{data}")
 #22
lowerWord="python is very good"
print(lowerWord.upper())
#23
upperWord="PYTHON IS VERY GOOD"
print(upperWord.lower())
capitalizWord='python quiz'
print(capitalizWord.capitalize())
fileName="abc.csv"
print(fileName.endswith("csv"))

if fileName.endswith("csv"):
  print("엑셀파일입니다")
  fileName="abc.csv"
fileName.endswith("csv"or"xlsx")


