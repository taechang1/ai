package javaBasic3.ch06.seco11;

public class Calculator {
//메소드 동작 ~한다 ~하기 웃기 잠자기 놀기 계산한기
	//형식 {접근 제한다}리턴 타입 메소드명 ([매개변수...]){}
	//형식에서 []생략가능 ..여러개
	void powerOn() {
		System.out.println("전원을 켭니다.");
		
	}
	void powerOff() {
		System.out.println("전원을 끕니다.");
	}
	int plus(int x,int y) {
		int result=x+y;
		return result;//return 은 메소드를 호출한 곳을 변수 값을 되돌려 주어라
		
	}
	double divide(int x , int y) {
		double result=(double) x /(double) y;
		return result;//메소도는 설계한다고 샐행되는게 아니고 호출해야한다
	}
	int plus(int x,int y,int z) {
		int result=x+y+z;
		return result;
		}
	
}
