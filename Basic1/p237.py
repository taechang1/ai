#딕셔너리{key:value}
score= {"kor":90,"eng":89,"math":95}
print(score["math"])
user={"id":"kim55","name":"강선준","level":"7","ppint":10000}
print(user["id"])
#전체 출력하기
for ukey in user:
  print(f"{ukey}-{user[ukey]}~~")
#추가하기
score["music"]=100
print(score)
user["vip"]="우수회원"
print(user)
#수정하기
score["music"]=80
print(score)
user["vip"]="최우수회원"
print(user)
#삭제하기
x=score.pop("music")
print(x)
print(score)
print("vip")
print(user)
#반복문 이용해서 딕셔너리 처리
area_code={02:"서울",051:"부산",053:"대구",062:"광주",}
for k in area_code:#key값이 자동으로 한개씩 k로 들어간다
  print(f"{k}-{area_code[k]}")

keys=[]
for k in area_code:
  keys.append(k)#키를 모아주는것
  print(keys)

