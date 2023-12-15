package JavaBacic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		a.aM();
		a.sa=2000;
		a.saM();
		A.B ab=a.new B();//A.B A클래스에 속안에 있는 B클래스
		ab.b=300;
		ab.bM();

	}

}
class A{
	
	int a=10;
	void aM() {
		System.out.println(a);
		//b=b+100;// 내부 클래스의 변수를 사용핤 없다
		//bM();//내부 클래스의 메소드를 사요할 수없다
	}
	static int sa=200;//정적 멥버 번연할때 미리 스택 메모리에 올린다
	static void saM() {
		System.out.println(sa);
		//System.out.println(b);//new 하고 써야한다
		//System.out.println(a);static  붙어 있느 메소드는 미리 올라가기 때문 못쓴다.
//		aM();
//		bM();
	}
	
	class B{
		//a=a+100; 에러 메소드 안에 더해라 라고 명령하는 하는데 클래스에 줘서 안됨
		//aM();에러 메소드안에 메소드 호출하고 명령해야하는데 클래스에다 명령주어서 안됨
		int b=20;
		void bM(){
			a=a+100;//내부 클래스에서 외부 클래스 필드를 사용할 수 있다
			aM();// 내부 클래스에서 외부 클래스의 메소드 호출할 수 있다
			System.out.println( b );
		}
//		static int sb=200;//A 클래스가 new가 되기 전이니까
//		static void sbM() {
//			
//		}
	  }
}
