package JavaBacic6.ch09.sec05;

public class AnyEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AA aa=new AA();// 이름 있는 자식 클래스 객체화
		aa.iaM();
		A aaa=new AA();
		//자식 이름 없이 자식 클래스 객체화하기-익명 자식객체
		A a= new A() {
			@Override
			void iaM() {
				System.out.println("이름 없는 자식 클래스 내용 부모 객체화에 {}넣고 바로 자식 클래스 만듬");
			}
		};
		a.iaM();
		

	}

}
class A{
	void iaM() {
		
	}
	
}
class AA extends A{//상속
	@Override
	void iaM() {
		System.out.println("자식 클래스");
	}
}