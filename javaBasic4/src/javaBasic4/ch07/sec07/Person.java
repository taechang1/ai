package javaBasic4.ch07.sec07;

public class Person {//final 클래스는 부모가 될수 없다
	String name;
	int age;
	public  void eat() {
		System.out.println("일반 밥을 먹는다.");
	}
	
	public Person() {
		// TODO Auto-generated constructor stub
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
