#상속: 부모 클래스 멤버들을 자식이 모두 쓸수 있는것
#class A{
#
#}
#class AA extends A{
# 
#}
class A:
  def aM(self,x):
    print(x)
class AA(A):#상속 개념
  def aM(self,x):
      print("나는 자식 메소드 오버라이딩",x*x)
a=A()
print(a.aM(10))
aa=AA()
print(aa.aM(10))
a1=AA()
print(a1.aM(20))
