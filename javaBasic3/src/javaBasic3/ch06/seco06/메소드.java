package javaBasic3.ch06.seco06;

public class 메소드 {
	static int a=10;//정적 필드
	static void sm1() {
		//정적 메소드
		
	}
	int b=10;//인스턴스 필드 
	//생성자
	public 메소드() {
		b=20;//인스턴스 변수의 값으 초기값으로 넣을 수 있다.
	}
	static {
		//정적 블록
		//b=200; 오류 발생
	}
	//상수
	static final double PI= 3.14;
	void m1() {
		
	}
	int m2() {
		return 0;
	}
	double m3(int ... values) {
		return 0.0;
	}
	double sum(double ... valies) {
		//실습의 합계르 구하는 코드
		
		return 0.0;
	}double sum(int ... valies){
		return 0.0;
	}
	String sum(String ...values) {
		return null;
	}
 
}
