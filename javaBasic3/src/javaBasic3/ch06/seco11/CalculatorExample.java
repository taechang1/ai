package javaBasic3.ch06.seco11;

public class CalculatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calculator calculator=new Calculator();
		calculator.powerOn();//메소드 호출
		calculator.powerOff();
		calculator.powerOn();
		int result=calculator.plus(300, 500);
		result=calculator.plus(-50,-100);
		//100 200 300 더하기
		//1번 방법
		System.out.println(result);
		result=calculator.plus(100,200);
		result=calculator.plus(result,300);
		System.out.println(result);
		
		//2번 방법
		result=calculator.plus(100,200,300);
	}
//234 int sum(int ... values)여러개
}
