package javaBasic3.ch06.seco09;

public class SportCar {

	int a;// 필드 =항목=변수
	
	void aPrinter() {// 메소드 함수 동작
		System.out.println(a);
		
	}
	
	//생성자 
	public SportCar() {
		//기본 생성자 객체화 할떄 초기값으 넣을 때 이용
		// 생성자르 1개라도 안 만들면 자바가 기본생성자를 자동으로 만들어 준다
		//만약 1개라도 만들면 자바가 안만들어 준다
	}
	public SportCar(int a) {
		this.a=a;
	}
	
}
