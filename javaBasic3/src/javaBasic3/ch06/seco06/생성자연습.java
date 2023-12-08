package javaBasic3.ch06.seco06;

public class 생성자연습 {
    String name;
    int score;
	public 생성자연습(String name) {
		
		//this(5,false);//다른 생성자 호출 단 첫줄에서만 쓴다
		// TODO Auto-generated constructor stub//생성자 컨트롤 스페이바 첫번째꺼
		//생성자를 안만들어도 자바 컴파일러가 자동으로 만듬
		//기본 생성자가 ()이건 자동으로 만들지마 안에 객체 int String 같은거는 안만들어줌
		//생성자가 1개라도 있으면 자동으로 안만들어짐
		
		name="김유신";
	}

	public 생성자연습() {
		// TODO Auto-generated constructor stub
	}
	
	
}
