#178 4-6
#10 = 1 X 2 X 3 X.. 10
"""
for i in range(10):# 0~9까지
  print(i,end=" ")
print("-"*10)
for i in range(1,11):
  print(i,end=" ")
print("-"*30)
for i in range(11,0,-1):
  print(i,end=" ")
print("-"*30)

for i in "I love you!":
  print(i,end=" ")
sum=0
j=1
while True:
  if sum>=5000:
    break
  else :
    j+=1
    sum+=j
print(j,sum)

fac=1
for i in range(1,11):
  fac=fac*i
print(fac)
#4-1
count=0#3
#1단계 1부터 1000까지 출력
for x in range(1,1001):
#2단계3의 배수가 아닌것만 출력
  if count==10:#3
   print()#3
   count=0
  if x%3!=0:#2
# 3단계 1줄에 10개 씩 출력
    print(x,end=" ")
    count+=1
#while문
i=1
count=0
while i<=1000:
  if count==10:
    print()
    count==0
  if i%3!=0:
    print(i,end=" ")
    count+=1
    i+=1
#4-2
con="y"
while con == "y":
 jumsu= int(input("성적을 입력하세요"))
 if 90<=jimsu<=100:
   result="수"
 elif 80<=jimsu <=89:
   result="우"
 elif 70<=jimsu <=79:
    result="미"
 elif 60<=jimsu <69:
    result="양"
 elif 0<=jimsu <=59:
    result="가"
    print(f"등급:{result}")
    con=input("계속하시겠습니까?(중단:q,계속:y)")

#4-3
start=int(input("시작수를 입력해주세요:"))
end=int(input("끝 수를 입력해주세요:"))
for i in range(start,end+1):
  print(i,end=" ")
#3단게 시작수~ 끝수 소수를 출력하기
#6%5==0
#30 소수 판단하기 30%2==0
x=True
for i in range(2,31):
  if 31%i==0:
    x=False
    break
if x:
  print(f"{31}은 소수이다")
  """
  #소수만 출력하기
start=int(input("시작수를 입력해주세요:"))
end=int(input("끝 수를 입력해주세요:"))
x=True
for i in range(start,end+1):# start30 end 80
  x=True
  for j in range(2,start):#31 80
    if i%j==0:
      x=False
      break#한단계 반복문 밖으로 나간다. 즉 forj에서 밖으로
  if x:
   print(i,end=" ")
   
