x=10
y=20
print("두수의합:",x+y)
#2
x=int("10")
y=int("20")
z=(x+y)
print(("x+y="),z)
#3
str1=10
str2=20
str3=str1+str2
"""
print(str1,"+",str2,"=",str3)
#95 심화

kg=input("변환할 킬로그램(kg)은")
print("-"*30)
print("킬로그램  파운드  온스")
print("-"*30)
pound=int(kg)*2.204623
ounce=int(kg)*35.273962
print("%d       %.2f ")

# #s2-2
phone=input("휴대번호는?")
# #방법1) "-"찾아서 ""바꾸기
deleteHy=phone.replace("-","")
print(f"입력된 휴대번호:{phone}")
print(f"하이픈 삭제된 휴대번호{deleteHy}")
#방법2)split("-") 010-1234-5678

deleteHy2= (phone.split("-"))
print(deleteHy2[0],deleteHy2[1],deleteHy2[2],sep="")
"""
# 2-13
number ="37366366845"
print(number[-2: : ])
#2-12

string="가는 말이 고와야 오는말이 곱다"
print(string[6:13])


