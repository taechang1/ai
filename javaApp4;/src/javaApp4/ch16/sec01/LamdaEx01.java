package javaApp4.ch16.sec01;

public class LamdaEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a= new A() {
			@Override
			public int aM(int a, double b) {
				// TODO Auto-generated method stub
				return (int)(a+b);
			}
		};
		System.out.println(a.aM(10, 1.8));
		//���ٽ�
		//A a1=(c,d)->{return(int)(c+d);};//�Ű� ������ �ڷ����� ������ �� �ִ�.(int c, double d)
		A a1=(c,d)->(int)(c+d);
		System.out.println(a1.aM(20, 3.8));
		B b1=(x,y,z)->{
			System.out.println("�̸���"+x);
			System.out.println("Ű��"+y);
			if (z) System.out.println("��");
			else System.out.println("��");
		};
		b1.bM("ȫ�浿", 170, true);
		b1.bM("�̼���", 160, false);

	}

}
//@~~ ������̼� �ٷ� �Ʒ��� �ִ� ��ü�� ������ �����Ҷ� �����
//@FunctionalInterface �������̽� �ȿ� �߻� �޼ҵ尡 1���� �ִ� ��� ����
@FunctionalInterface
interface A{
	int aM(int a,double b);
}
@FunctionalInterface
interface B{
	void bM(String x,Integer y,Boolean z);
}
