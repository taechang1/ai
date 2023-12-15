package javaBasic5.ch08.sec03;

public class 확인문제9장2번 {

	public static void main(String[] args) {
		// 4번
		
		Driver d =new Driver();
		
		A a =new B();
		C c=new C();
		D d1=new D();
		d.method(a);

	}

}
class Driver{
	void method(A a) {
		
	}
}
interface A{
	
}
class B implements A{
	
}
class C implements A{
	
}
class D extends C{
	
}
class E extends C{
	
}