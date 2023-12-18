#for 문,while문
# for x in range(1,11,2):
#   print(x)
# #5 10 .100
  
# for z in range(5,101,5):
#  print(z)
# for y in range(100,4,-5):
#   print(y)
# start=int(input("시작수?"))
# stop=int(input("마지막수?"))
# increae=int(input("증가수?"))
# for v in range(start,increae,stop):
#    print(v)


sum=0
sumsum=0
for x in range(1,101,1):
  sum=sum+x
  sumsum=sumsum+sum
  print(sum)
  print(sumsum)
  #146
for x in range(10):
 print(x)
for x in range(1,11):
 print(x)
for x in range(1,10,2):
 print(x)
for x in range(20,0,-2):
 print(x)
#
year=2024
month=1
day=1
for day in range(1,32):
 print(year,month,day,sep="/")
 print()
 #
 sum=0
 for x in range(1,101):
  sum+= x
  if sum>=3000:
    break
  print(sum,x)
#
  
sum=0
for x in range(100,10001,5):
 sum+=x
 if sum>=5000:
   break
 print(sum,x)
 # 문자열 for 문
 for x in"abcdefg":
   print(x)
   count=0
for x in "this is python":
 print(x)
 if x=='t':
   count+=1
print(f"t의 갯수는 {count}개 입니다")
 #공백이 몇개인가요
for x in"abcdefg":
   print(x)
   count=0
for x in " this is python ":
 print ( x )
 if x==" ":
   count+=1
print(f"공백의 갯수는 {count}개 입니다")

 #"s"
for x in"abcdefg":
   print(x)
   count=0
for x in "this is python":
 print(x)
 if x=='s'or'i':
   count+=1
print(f"의 's'이거나 'i'의 갯수는 {count}개 입니다")
#이중 for문 --구구단 출력
for i in range(2,10):
  for j in range(2,10):
    # print(f"{j}X{i}={j*i}",end=", " )
     print("%2dX%2d=%2d "%(j,i,j*i),end=" ")
  print()

  
#이중 for문 예제 *출력하기
for i in range(2,10):
  for j in range(1,10):
    print("%2dX%2d=%2d "%(i,j,i*j),end=" ")
  print()
#156쪽
for i in range(1,10):
  for j in range(1,i+1):
    print("*",end=" ")
  print()

  for i in range(1,11):
   for j in range(i,11):
    print("*",end="")
  print()
for i in range(10,0,-1):
  print("*"*i)
  

for i in range(1,6):
   for j in range(1,6-i):
     print(" ",end="")#공백 출력
   for k in range(1,2*i):
     print("*",end="")
   print()

#152
print("^"*30)
print("섭씨 화씨")
print("^"*30) 

for c in range(-20,31,5):
  f=c*9.0/5.0+32.0
  print("%5d%6.1f"%(c,f))

print("^"*30)

count=0
for i in range(201,800):
  if i>800:
    print("%d"%i,end=" ")
    count=count+1
  if count/10==0:
    print()

print("-"*40)
print("  cm   mm   m   inch")
print("-"*40)
 
for cm in range (1,101):
 mm=cm*10.0
 m=cm*0.01
 inch=cm*0.3937


