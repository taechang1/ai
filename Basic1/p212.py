#2차원 리스트
numbers=[[10,20,30],[40,50,60],[60,70,80],['a',[100,90]]]
print(numbers[0][0])
print(numbers[1][2])
#80
print(numbers[2][2])
#a
print(numbers[3][0])
#100
print(numbers[3][1][0])

boards=[[1,"작성자1","내용1"],[2,"작성자2","내용2"],[3,"작성자3","내용3"]]
#내용 전부 출력하기
#[0][0] [0][1] [0][2]  [1][0] [1][1] [1][2]  [2][0] [2][1] [2][2]
for i in range(0,len(boards)):
  for j in range(0,len(boards[i])):
    print(boards[i][j],end=" ")
    print()
#내용을 모두 출력하기
jumsu=[[10,20],[30,40,50],[60]]
# 생각 10을 출력하려면 [0][0],20 을 출력하려면[0][1]
#[0][0] [0][1] [1][0] [1][1][1][2]  [2][0]
sm=0
for i in range(0,len(jumsu)):
  for j in range(0,len(jumsu[i])):
   sm=sm+jumsu[i][j]
print(sm)#210
#문3) sum()함수를 이용해서 구하기
# a=[1,2,3]
# print(sum(a))
jumsu=[[10,20],[30,40,50],[60]]
print(sum(jumsu[0]))# [10,20]의 합이 나온다
print(sum(jumsu[1]))
# print(sum(jumsu))#에러 발생

sm=(sum(jumsu[0]))+(sum(jumsu[1]))+(sum(jumsu[2]))
print(sm)
#for 문 이용해서 전체 합을 구하기
sm=0
for i in range(0,len(jumsu)):
  sm+=sum(jumsu[i])
print(sm)

#217쪽
strings=[ ["원두커피","라때","콜라"],["우동","국수","피자","파스타"]]
#국수 출력
print(strings[1][1])
#"피자","파스타" 삭제하세요
#strings.remove[1][3]
#strings.remove[1][4]
#원두커피 치환하기 아메리카노
#생각 원두커피 인덱스를 찾아서 해당 인덱스를 수정한다
findColumIndex = strings[0].index("원두커피")
strings[ 0 ][ findColumIndex ]   = "아메리카노"
strings[findColumIndex]= "아메리카노"
print(strings[0])
print(strings[1])

#join()리스트--> 문자열
#문자열 replaceg하기
# strings=[ ["원두커피","라때","콜라"],["우동","국수","피자","파스타"]]
# strings[0].join("/")

#222 리스트로 영화관 예약 가능 좌석
#ver 1.0교재에 있는것 풀기
seats=[[ 0,0,0,0,0,0,0,0,0,0],\
        [ 0,0,0,0,0,0,0,0,0,0],\
        [ 0,0,0,0,0,0,0,0,0,0],\
        [ 1,1,1,0,0,0,0,1,0,0],\
        [ 0,0,0,0,0,1,0,0,0,0],\
        [ 0,1,0,0,0,1,0,1,0,0],\
        [ 0,0,0,0,0,0,1,0,0,0],\
        [ 1,0,1,0,0,0,0,0,0,1]]
for i in range(0,len(seats)):
 print("%d행"%i,end=" ")
 for j in range(0,len(seats[i])):
  
   if seats[i][j]==0:
     print("%3s"%"□",end=" ")
   else:
     print("%3s"%"■",end=" ")
 print()

seatsCount=int(input("몇좌석예약"))
count=1
while count<=seatsCount:
  row=int(input("좌석예약하기 행을 입력하기"))
  colum=int(input("좌석예약하기 열을 입력하기"))
  seats[row][colum]=1
  count+=1
  for i in range(0,len(seats)):
    print("%d행"%i, end=" ")
    for j in  range( 0, len( seats[i] )):
      if seats[i][j] == 0:
       print("%3s" % "□", end="")
      else :
       print("%3s" % "■", end="")    
    print()
