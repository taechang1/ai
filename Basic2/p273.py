def inch_to_cm(inch):
  cm=inch*2.54
  return cm

num=25
num=int(input("인치를 입력하세요"))
result=inch_to_cm(num)
print("%d inch=>%.2f cm"%(num,result))
#2/5 c/-5
def tri_area(w,h):
   result=w*h*0.5
   return result

width=10
height=15
print("삼각형의 너비:",width)
print("삼각형의 높이:",height)
print("삼각형의 면적:",tri_area(width,height))

#문제 풀어 보세요 C7-6 ,C7-7,C7-8
def sum_besu(n):
   for i in range(1,101):
      if i % n==0:#3의 배수
        sum=sum+i
   return sum
besu=3
total=sum_besu(besu) # 1683
print("1~100 사이%d 의 배수의 합계:%d"%(besu,total))
#C7-7

def count_space(a):
   for x in a:
      if x==" ":
         count=count+1
   return
sentence="Python is easy and powerful"
print(sentence)
num_space=count_space(sentence)
print("-공백의 갯수:",num_space)
# C7-8

def get_item(userid):
   game_items={"kim":"총","lee":"대포","choi":"전투기","hwang":"병사"}
   for key in game_items:
    if key ==userid :
      item=game_items[key]
    return item

user1="kim"
user2="hwang"
print("%s의 게임 아이템:%s"%(user1,get_item(user1)))
print("%s의 게임 아이템:%s"%(user2,get_item(user2)))
   
