package javaBasic3.ch06.seco07;

public class 확인문제6장16번 {

	public static void main(String[] args) {
		
		Printer printer=new Printer();//Printer 클래스 객체 생성
		
		printer.println(10);// 메소드 호출
		printer.println(true);// 참조 변수명.메소드
		printer.println(5.7);
		printer.println("홍길동");
		
		printer1.println(10);// 클래스 명 .메소드 static 메소드
		printer1.println(true);//클래스 로더 단계에서 스택메모리 메소드 영역에 자동으로 올라간다.
		printer1.println(5.7);
		printer1.println("홍길동");
		

	}

}
