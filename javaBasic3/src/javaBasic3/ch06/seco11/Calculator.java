package javaBasic3.ch06.seco11;

public class Calculator {
//�޼ҵ� ���� ~�Ѵ� ~�ϱ� ���� ���ڱ� ��� ����ѱ�
	//���� {���� ���Ѵ�}���� Ÿ�� �޼ҵ�� ([�Ű�����...]){}
	//���Ŀ��� []�������� ..������
	void powerOn() {
		System.out.println("������ �մϴ�.");
		
	}
	void powerOff() {
		System.out.println("������ ���ϴ�.");
	}
	int plus(int x,int y) {
		int result=x+y;
		return result;//return �� �޼ҵ带 ȣ���� ���� ���� ���� �ǵ��� �־��
		
	}
	double divide(int x , int y) {
		double result=(double) x /(double) y;
		return result;//�޼ҵ��� �����Ѵٰ� ����Ǵ°� �ƴϰ� ȣ���ؾ��Ѵ�
	}
	int plus(int x,int y,int z) {
		int result=x+y+z;
		return result;
		}
	
}