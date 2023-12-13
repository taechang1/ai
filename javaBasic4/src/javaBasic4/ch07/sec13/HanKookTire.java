package javaBasic4.ch07.sec13;
// 자식 클래스 하위 클래스 = mySql
public class HanKookTire extends Tire{
	@Override
	public void roll() {
		System.out.println("한국 타이어가 굴러갑니다.");
		System.out.println("MySqL 프로그램");
	}

}
