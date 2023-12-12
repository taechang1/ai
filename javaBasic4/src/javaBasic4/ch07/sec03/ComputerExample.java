package javaBasic4.ch07.sec03;

public class ComputerExample {

	public static void main(String[] args) {
		//부모 클래스 객체 생성
		Calculator cal= new Calculator();
		System.out.println(cal.areacircle(10));//부모 메소드 호출
		Computer com =new Computer();
		System.out.println(com.areacircle(10));

	}

}
