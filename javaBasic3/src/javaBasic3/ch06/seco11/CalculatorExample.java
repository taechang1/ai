package javaBasic3.ch06.seco11;

public class CalculatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calculator calculator=new Calculator();
		calculator.powerOn();//�޼ҵ� ȣ��
		calculator.powerOff();
		calculator.powerOn();
		int result=calculator.plus(300, 500);
		result=calculator.plus(-50,-100);
		//100 200 300 ���ϱ�
		//1�� ���
		System.out.println(result);
		result=calculator.plus(100,200);
		result=calculator.plus(result,300);
		System.out.println(result);
		
		//2�� ���
		result=calculator.plus(100,200,300);
	}
//234 int sum(int ... values)������
}