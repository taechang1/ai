package javaBasic4.ch07.sec03;

public class Computer extends Calculator {

@Override//@��� ���̼� ��Ģ ������ ��Ģ�� ��߳��� ������ �´�
	public double areacircle(double r) {
		System.out.println("Computer��ü�� areaCircle()����");
		return 2*3.14*r;//�� �ѷ� ���ϱ�
}
}
