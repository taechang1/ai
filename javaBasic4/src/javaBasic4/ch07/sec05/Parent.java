package javaBasic4.ch07.sec05;

public class Parent {
	
	public String nation ;
	
	public Parent() {
		this("���ѹα�");
		System.out.println("Parent() call");
	}
	public Parent(String nation) { 
		this.nation=nation;
		System.out.println("Parent(String nation) call");
		
	}
}
