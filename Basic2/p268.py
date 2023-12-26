# C7-1  C7-3 C7-4
def add(a,b):
  c=a+b
  print("%d+%d"%(a,b,c))
  add(12,15)
  add(245,300)
  add(-38,-12)
#C7-3
def member_join(*args):
  result=""
  for arg in args:
    result=result+arg+" "
  print("가입회원:",result)
member_join("김정연","안서영")
member_join("황선연","김철영","이창연")
member_join("정수진","김보람","정수연","함소영")

#C7-4
def multiply(num,x):
  i=0
  while i<len(num):
   num[i]=num[i]*x
   i=i+1

numbers=[10,20,30,40,50]
multiply(numbers,10)# numbers 안에 있는 주소를 보낸다
print(numbers)

multiply(numbers,10)
print(numbers)