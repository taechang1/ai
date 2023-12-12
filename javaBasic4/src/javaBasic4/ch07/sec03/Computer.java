package javaBasic4.ch07.sec03;

public class Computer extends Calculator {

@Override//@어노 테이션 규칙 재저의 규칙에 어긋나면 오류를 냈다
	public double areacircle(double r) {
		System.out.println("Computer객체의 areaCircle()실행");
		return 2*3.14*r;//원 둘레 구하기
}
}
