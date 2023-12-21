my_list=["p","y","t","h","o","n","i","s","f","u","n","!"]
#5-1
print(my_list[5:11])

#5-2
print(my_list[-5:-2])
#5-3
print(my_list[8:])
#5-4
print(my_list[:4])
#5-5
st=list("i am a genius!")
for st in st:
 print(st,end=",")
#심화 문제 5-1
file_names = ['file1.py', 'file2.txt', 'file3.pptx', 'file4.doc']
# a="file1.py"
# aS=a.split(".")
# print(aS[0])
for file_name in file_names:
 fs= file_name.split(".")
#  print(f"{file_name}=>파일명:{fs[0]},확장자:{fs[1]}")
 print( "%s => 파일명 : %s, 확장자 : %s"%(file_name, fs[0], fs[1]) )

# #5-11
# data=[[10,20,30],[40,50],[60,70,80,90]]
# row=[10,20,30]
# for row in data:
#   for x in range(0,len(data[row])):
#    print(data[row][x],end=" ")
# print()
# #5-12
# row=[10,20,30]
# for row in range(0,len(data)):
#  for j in range(0,len(data[i])):
#   if j==0:
#    print(data[i][j],end=" ")
# print()
# #5-10
# fruits=["사과","오렌지","딸기","수박","멜론"]
# for i in range(len(fruits)):
#   print("%d.%s"%(i+1,fruits[i]))

#5-7~5-8
numbers=[7,9,15,18,30,-3,7,12,-16,-12]
#5-7
sm=sum(numbers)
print(sm)
sm=0
for i in numbers:
 print(sm)
 #5-8
count=1
sm=0
while count<len(numbers):
 sm+=numbers[count]
 count+=1
print(sm)
#5-9
count=1
sm=0
while count<len(numbers):
 if numbers[count]%2==0:
  print(numbers[count],end=" ")
  sm+=numbers[count]
 count+=1
print("합계%d"%sm)