#288 
#7-3
# def func():
#   global x
#   x=200
#   print(x)
# x=100
# func()
# print(x)

#7-4
#실행 결과를 보면서 차례대로 만들어 갑니다


# def lodmap(x):
#   y=x*0.621371
#   return y
# x=int(input("킬로미터를 입력하세요:"))
# print("%d킬로미터는%.2f마일입니다"%(x,lodmap(x)))

'''
x=input("원하는 옵션을 선택하세요(1,2,3,4)")
nu1=int(input("첫번째 숫자를 입력하세요"))
n2=int(input("두번째 숫자를 입력하세요"))

def plus(x,y):
  return x+y
def nm(x,y):
  return x-y
def db(x,y):
  return x*y
def dv(x,y):
  return x/y
rs=0
if x == '1':
	rs = plus(nu1, n2)
elif x == '2':
	rs = nm(nu1,n2)
elif x== '3':
	rs = db(nu1, n2)
elif x == '4':
	rs = dv(nu1, n2)
else:
	print("잘못된 입력입니다. ")
     
print(nu1,n2,rs)
#7-6

def alphaCount(word,aone):
     for i in word:
          if i ==aone:
               count+=1
     return count
     

word=input("영어 문장을 입력하세요")
aone=input("알파벳하나를 입력하세요")
count=alphaCount(word,aone)
print(f"{word}에 포함된 {aone}의 개수는 {count}이다")
'''
#7-7
'''
def tup1Sum(t1):
     for i in t1:
          sm=sm+i
tup1=(10,20,30,40,50)
ss=tup1Sum(tup1)
print("튜플의 합계:%d"%(ss))
#7-8 Thank you.역순으로 출력하기
def revereseFun(strVar):
    for i in range(len(strVar)-1,-1,-1):
       print(strVar[i],end="")

strVar=input("문자열 입력하세요")
revereseFun(strVar)

#7-9
def b(s1):
    s=s1.replace(" ","-")
    
s= input("문자열을 입력하세요")
b(s)
print(s)

#심화 7-2
eng_dict={"house":"집","piano":"피아노","christmas":"크리스마스","friend":"친구","bread":"빵"}
def engQuiz(eng_dict):
     for i in eng_dict:# 키값들이 i변수에 담긴다
        answer=input(f"{eng_dict[i]}에 맞는 영어단어는?")
        if answer==i:
           print("참잘했어요!")
        else:
          print("틀렸어요!")
          
engQuiz(eng_dict)
'''
#심화 7-1
# n=int(input("n값을 입력해주세요"))

# def decimalFun(n1):
#   de=[]
#   for i in range(2,n1,1):
#     if i%i==0 and i%i==0:
#        de.append(i)
#        break
#   print(de)
          
# decimalFun(n)
#7-3
n=int(input("n값을 입력하세요:"))

def nMul(n):
   result=[]
   for i in range(1,n+1):
      result.append(i*i)
   return result
resultList=nMul(n)
print(resultList)


