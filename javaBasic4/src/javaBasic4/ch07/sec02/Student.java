package javaBasic4.ch07.sec02;

public class Student extends Person{
	String dept;//����
	public void study() {
		System.out.println("�����Ѵ�.");
	}
	public Student() {
		System.out.println("�θ� Ŭ���� �ƹ��� Ŭ����");
	}
	public Student(String �̸�,int ����,String ����) {
		this.name=�̸�;
		this.age=����;
		this.dept=����;
		
		System.out.println("�θ� Ŭ���� �ƹ��� Ŭ���� ������ �ִ� ������");
	}
}
