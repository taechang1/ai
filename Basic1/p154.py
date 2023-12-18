"""
number= input("숫자를 입력하세요")
total=0
for a in number:
  if a%2!=0   :
    total+=1
    print("홀수의 개수:%d개 "%total)
    """
#4-7
for i in range(1,6):
  for j in range(1,11):
    print("*",end=" ")
print()

#4-8
for i in range(9,0,-1):
  for j in range(1,i,1):
   print(i,end=" ")
  print()
