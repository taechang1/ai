package javaBasic4.ch07.sec02;

public class Person {
	String name;
	int age;
	public void eat() {
		System.out.println("�Դ´�");
	}
	public void sleep() {
		System.out.println("�ܴ�");
	}
	public Person() {
		System.out.println("���� �ҸӴ� �θ� Ŭ�����Դϴ�.");
		
	}
	public Person(String name, int age) {
		
		this.name = name;
		this.age = age;
	}
}
