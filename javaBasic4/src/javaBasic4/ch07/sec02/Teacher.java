package javaBasic4.ch07.sec02;

public class Teacher extends Student {
	String 학과;
	public void teaching() {
		System.out.println("공부한다.");
		
	}
public Teacher() {
	super("홍길동",30,"컴퓨터공학");//부모 생성자 호출 단 첫줄에만 써야한다
	System.out.println("자식 클래스 나 me");
}
public Teacher(String name,int age, String dept,String 학과){
	this.name=name;
	this.age=age;
	this.dept=dept;
	this.학과=학과;
	
}
}
