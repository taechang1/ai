package javaBasic3.ch06.seco06;

public class 확인문제6장 {

	public static void main(String[] args) {
		// 
		생성자연습 c1 =new 생성자연습("홍길동");
		생성자연습 c2=new 생성자연습();		
		//생성자연습 c3=new 생성자연습(100,trun);
		생성자연습 c4=new 생성자연습("이순신");
		//생성자연습 c5=new 생성자연습(trun,100);
		//생성자 오버 로딩 생성자에서 매개변수 타입이 다른것
		메소드 m1=new 메소드();
		m1.m3(1,2);
		m1.m3(1,2,3,4);
		//정적필드와 메소드는 객체 생성하지 않아도 쓸수있다
		메소드.a =100;
		메소드.sm1();
		System.out.println(메소드.PI);
		}

}

class 확인{
	
	public 확인() {
		
	}
	
}