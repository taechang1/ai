#생성자
#자바식 코드
#class p{
#     void P(){
#           //생성자 용도: 객체생성하면서 초기화할 때
#    }
#}
class Members:
    def _init_(self):
     print("이름:",self.name)
     print("나이:",self.age)
     print("성별:",self.gender)
    def _init_(self,name=None,age=None,gender=None): #생성자_init-
     self.name= name
     self.age= age
     self.gender=gender
     
     def show_info(self):
        print("이름:",self.name)
        print("나이:",self.age)
        print("성별:",self.gender)
#객체생성
m1= Members("홍길동",25)
m1.show_info()
m2= Members("홍길동",25,True)
m2.show_info()
