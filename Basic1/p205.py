#x특정문자열 찾기 문자열치환 문자열 쪼개기
string1="python is fun!"
print(string1)
a=string1.find("k")
print(a)

studentName="홍길동 이순신 이경미 최수진"
#최수진 있어요
#우리반 아닙니다
if studentName.find("최수진")==-1:
  print("우리반 아닙니다")
else:
  print("우리반 입니다")
#치환하기 없는 자료를 치환하면 오류는 없고 치환 안됨
  studentName=studentName.replace("이수진","정수진")
  print(studentName)

data="홍길동/이순신/최경주"
#결과 홍길동 이순신 최경주
#결과 홍길동-이순신-최경주
data=data.replace("/"," ")
print(data)
#데이터 쪼개기
hello="have a nice day;Happy new year;Merry Christmas"
list1=hello.split(";")
print(list1)
list1=hello.split(";",1)
print(list1)

names=["황애린","홍지수", "안지영"]
print(names)

x="/".join(names)
print(x)
phoneNumber=["010","1234","4567"]
xx="-".join
print(xx)
print(type(xx))

#209 5-25
phone_list1=["010-3654-2637","010-3984-5377","010-3554-2973"]
print(phone_list1)
phone_list2=[]
for number in phone_list1:
  x=number.replace("-","")
  phone_list2.append(x)
print(phone_list2)
#210 5-26
sentences=["Love me ,Love my dog.","No news is good news.","Blood is thicker than water"]
for sentence in sentences:
  x=sentence.replace(" ","_")
  print(x)
#218 c5-5 문제풀기
questions=["s_hool","compu_er","deco_ation","windo_","hi_tory"]
answers=["c","t","r","w","s"]

for i in range(0,len(questions),1):
 q="%s:밑줄에 들어갈 알파벳은?"%questions[i]
guess=input(q)
if  guess==answers[i]:
 print("정답")
else:
 print("틀렸어요!")
#219 c5-6 문제풀기
scores=[]
while True:
  x=int(input("성적을 입력하세요(종료 시 -1입력):"))#77

  if x == -1:
    break

  else:
   scores.append(x)
  sum=0
  for score in scores:
   sum+=score
  avg=sum/len(scores)

print("합계:%d,평균:%.2f"%(sum,avg))