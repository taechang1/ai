package javaApp1.ch12.sec04;

public class WrapperEx {

	public static void main(String[] args) {
		// 524��
		//�ڷ��� �⺻�� byte char int long boolean,float double ������ String
		//�⺻���� Ŭ������ �ƴϹǷ� �̸� ������� �޼ҵ尡 ����. �׷��� �⺻�� �ڷ����� Ŭ������ ����� �а� �ִ�-����Ŭ����
		//�ڽ� �⺻��-->��ü,��ڽ� ��ü--> �⺻��
		Integer a =10;
		Integer a1=new Integer(10);
		String as= a.toString();
		
		double da=a.doubleValue();
		System.out.println(da);
		System.out.println(a.MAX_VALUE);
		System.out.println(a.MIN_VALUE);
		//3.14"3.14"
		Double b= 3.14;
		//double���� �ִ���?
		System.out.println(b.MAX_VALUE);
		//double���� ������?
		System.out.println(b.SIZE);
		//10.1,5.4�ִ밪 ����ϱ�
		System.out.println(b.max(10.1,da));
		double dd=3.14;
	}

}
