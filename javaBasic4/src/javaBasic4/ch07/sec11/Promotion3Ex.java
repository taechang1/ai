package javaBasic4.ch07.sec11;

public class Promotion3Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        A a = new A();
        a.eat();
        System.out.println("-------");
        B b =new B();
        A b1 =new B();
        b.eat();//떡뽁이 자식자료
        b1.eat();//떡뽁이 자식자료 부모 타입 변수로 서언해도 자식게 나온다 (중요)
        
        System.out.println("-------");
        BB bb= new BB();
        A bb1=new BB();
        bb.eat();
        bb1.eat();//부모타입 변수를 선언해도 자식의 자료인 햄버거를 출력가능하다
        //입력
        
	}

}
class A{ 
	void eat() {
		System.out.println("밥");
	}
	
}
class B extends A{
	@Override
	void eat() {
		System.out.println("떡뽁이");
	}
}
class BB extends A{
	@Override
	void eat() {
		System.out.println("햄버거");
	}
}
class C extends B{
	@Override
	void eat() {
		System.out.println("피자");
	}
}