package javaBasic4.ch07.sec12;

import java.util.Scanner;

public class Promotion4Ex {

	public static void main(String[] args) {
		Promotion4Ex p=new Promotion4Ex();
		p.menuDispaly();
		int choice=0;
		
		while(choice!=5) {
			choice=p.menuChoice();
			p.output(choice);
		}
		p.output(choice);
	}
	public void menuDispaly() {
		System.out.println("---------------");
		System.out.println("1.밥2.떡뽁이 3.햄버거 4.피자5.종료");
		System.out.println("---------------");
	} 
	public int menuChoice() {
		Scanner sc=new Scanner(System.in);
		System.out.println("메뉴를 주문하세요 >");
		int choice;// 이 초이스는 메뉴 초이스꺼
		choice=sc.nextInt();
		return choice;
	}
	public void output(int choice) {
		if(choice==5) {System.out.println("장사 끝 주문 완료!!"); return;}
		A a=null;
		switch(choice) {
		case 1:  a= new A();break;
		case 2:  a= new B();break;
		case 3:  a= new BB();break;
		case 4:  a= new C();break;
		 
			
		}
		a.eat();
		System.out.println("맛있게 드세요");
	}

}
class A{ 
	void eat() {
		System.out.println("밥");
	}
	
}
class B extends A{
	@Override
	void eat() {
		System.out.println("떡뽁이");
	}
}
class BB extends A{
	@Override
	void eat() {
		System.out.println("햄버거");
	}
}
class C extends B{
	@Override
	void eat() {
		System.out.println("피자");
	}
}