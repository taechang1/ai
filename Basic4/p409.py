# #속성 자바에서 필드 변수
# class A{
#   int k=10;//인스턴스 필드- 파이션에서는 인스턴스 속성:자료쓰고 변수 버리기 1회용
#   static int sk=10;//정적필드 파이션에서 클래스 속성:자료 계속 유지,
# }

class Student:
  pet=[]#클래스 속성
  def push_pet(self,x):
    self.pet.append(x)


john=Student()#객체화
john.push_pet("고양이")
print(john.pet)
sally=Student()
sally.push_pet("강아지")
print(john.pet)
'''
class Student:
  pet=[]#클래스 속성
  def _init_(self):
    self.pet=[]#인스턴스 속성 객체화 할때마다 지워진다
  def push_pet(self,x):
    self.pet.append(x)


john=Student()#객체화
john.push_pet("고양이")
print(john.pet)
sally=Student()
john.push_pet("강아지")
print(john.pet)
print(sally.pet)
'''
