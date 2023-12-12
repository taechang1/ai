package javaBasic4.ch07.sec02;

public class Student extends Person{
	String dept;//전공
	public void study() {
		System.out.println("공부한다.");
	}
	public Student() {
		System.out.println("부모 클래스 아버지 클래스");
	}
	public Student(String 이름,int 나이,String 전공) {
		this.name=이름;
		this.age=나이;
		this.dept=전공;
		
		System.out.println("부모 클래스 아버지 클래스 내용이 있는 생성자");
	}
}
