package javaBasic4.ch07.sec02;

public class Teacher extends Student {
	String �а�;
	public void teaching() {
		System.out.println("�����Ѵ�.");
		
	}
public Teacher() {
	super("ȫ�浿",30,"��ǻ�Ͱ���");//�θ� ������ ȣ�� �� ù�ٿ��� ����Ѵ�
	System.out.println("�ڽ� Ŭ���� �� me");
}
public Teacher(String name,int age, String dept,String �а�){
	this.name=name;
	this.age=age;
	this.dept=dept;
	this.�а�=�а�;
	
}
}
