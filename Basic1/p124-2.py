# 간단 계산기 만들기 - 124쪽
print("기능 선택")
print("1. 더하기")
print("2. 빼기")
print("3. 곱하기")
print("4. 나누기")
print()

s=input("계산기 기능을 선택하세요(1/2/3/4)")
count = int( input("계산할 숫자갯수는? ")) # 2
result = 0
while  count > 0    :
    num1 = int(input("숫자 ?"))
    count = count - 1 
    if s == "1" :
        result += num1
    elif s == "2" :
        result -= num1  
    elif s == "3" :
        result *= num1  
    elif s == "4" :
        result /= num1  
    else :
        print( "입력된 숫자가 잘못 되었습니다. ")
print( result )        

