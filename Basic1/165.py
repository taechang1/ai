#while문
#형식 while조건문:
# 조건이 참이면 반복할 내용
#조건이 거짓이면 수행할 내용

#1~100까지 합
i=1
sum=0
while i<= 100:
  sum+=i
  i+=1
  print(sum)


i=500
sum=0
while 200<=i:
  sum+=i
  i-=1
  print(sum)
#500~1000
  i=500
  sum=0
  count=0
  while i <=1000:
    sum+=i
    i+=7
    count+=1
    print("갯수%d"%count)
    print("합계%d"%sum)
    print("평균%.2f"%(sum/count))

i=1
sum=0
while True:
  i+=1
  if i%5!=0:
    continue
  if i==101:
     break
  print(i,end=" ")