x='a'
print(ord(x))

x=15
print(bin(x))
print(hex(x))

x=round(7.25678)
print(x)

x=max(10,9,-20)
print(x)
x=min([1,5,0,7])
print(x)
x=max( (10,8,7,20))
print(x)
x=min({10,98,67,10})
print(x)
x=min({1:"a",0:"b",-1:"c"})
print(x)#키의 제일작은 수 출력
x=min({'a','A','c'})
print(x)#유니코드로 제일작은수 A가 나옴
#소수 여부 판별하기
'''
def is_prime(n):
  prime=True
  if n>1:
    for i in range(2,n):
      if n%i==0:#4%2==0
        prime=False
  return prime   
number=int(input("수를 입력하세요"))
if is_prime(number):
  print("소수이다")
else:
 print("소수가 아니다")
 
#세제곱 합계 구하기
def square_sum(n):
  sm=0
  for i in range(1,n+1):
    sm=sm+i*i*i


n=int(input("n의값을 입력하세요"))
print(square_sum(sm))

#8-1
def square_sum(n):
  sm=0
  for i in range(1,n+1):
   if i%2!=0:
    sm=sm+( i* i * i)
    print("%d%d%d"%(i,i,i),end="")

    if i==n or i==n-1 :
      print(" = ",end="")
    else:
      print(" + ",end="")
  print(sm)
  n=int(input("n의값을 입력하세요"))
  square_sum(n)
  '''
'''
#회무늘 구하기 알고리즘
def is_palindrome(s):
  for i in range(0,int(len(s)/2)):
    if(s[i]==s[len(s)-1-i]):
      return False
  return True


string="rotator"
if is_palindrome(string):
  print("회문")
else:
  print("회문아니다")
#문장 단어 반대로 하기
def reverese_sentence(sentence):
  words=sentence.split(" ")
  result=""
  for word in words:
    result=word+" "+result

sentence="Nice to meet tou"
print(reverese_sentence(sentence))

string="A good book is a great friend"
word="friend"

#테스팅 코드
# print(string.find("is"))#12 String 문자열안에 is가 12,번째 인덱스에 있다
# print(string.find("as"))#-1 String 문자열안에 as가 없으면 -1을 리턴한다

#다수의 문자열 치환하기
def replace_word(s,wl,w):
  new_str=[]
  ssList=s.split(" ")
  for si in ssList:
      if si in word_list:
        new_str.append(w)
      else:
        new_str.append(si)
  #리스트를 문자열로 바꾸기
  new_str1=" ".join(new_str)
  return new_str1

string="python java apple orange banana"
word_list="apple orange banana"
word="fruits"
new_str=replace_word(string,word_list,word)
#print(new_str)
print("치환된 문자열"+new_str)
#print("aa"in word_list)
'''
# def string_shift(string,d,direction):
#   if direction=="left":
#     left_part=string[d:]
#     right_part=string[0:d]
#   else:
#     left_part=string[-d:]
#     right_part=string[0:len(string)-d]
#     result=left_part+right_part
#     return result
# string="pythonprogramming"
# str_left=string_shift(string,2,"left")
# str_right=string_shift(string,3,"right")
# print("좌측으로 2칸 이동"+ str_left)
# print("우측으로 3칸 이동"+ str_right)

#c8-4문장의 단어 갯수를 카운트 하라
def coount_word(s):
  arr=s.split(" ")
  print(arr)
  return len(arr)

string="I am a Student."
num_word= coount_word(string)
print("단어의 개수:",num_word)
#c8-5
def del_word(s,w):
  arr=s.split(" ")
  arr.remove(w)
  result=" ".join(arr)

string="Don't cry before you are the hurt"
word="the"
new_str=del_word(string,word)
print("변경된 문자열",new_str)
#선형 탐색 순차탐색 앞에서 부터 차례대로 찾기 정렬이 안된 자료 찾기
#검색 횟수 최악인 경우 n회 찾는다 최악 시간의 복잡도 N
#이진 탐색 이분탐색 전제 조건 정렬이 되어야 한다
#최악 시간의 복잡도 logN
def find_max(n ):
  mx=n[0]
  for i in range(1,len(n)):
    if n[i]>mx:
      mx=n[i]
  return mx

data=[5,-3,12,8,2]
max_value=find_max(data)
print("선형검색으로 최대값 찾기",max_value)
def binary_search(n,x):
  start=0
  end=len(n)-1
  while start<=end:
    mid=(start+end)/2
    if x==n[mid]:
      return mid
    elif x>n[mid]:
      start=mid+1
    else:
      end=mid-1
    return -1

data[7,16,23,35,40,52,68,78,82]
search_num=52
index=binary_search(data,search_num)
print(index)
#322 8-3
def sen_splite(s):
  ss=s.split("/")
  for sp in ss:
    print("%s:%d"%(sp.len(sp)))

sentence="강아지/사슴/거북/고릴라/청개구리"
sen_splite(sentence)