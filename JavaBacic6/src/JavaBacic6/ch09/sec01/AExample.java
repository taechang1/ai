package JavaBacic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		a.aM();
		a.sa=2000;
		a.saM();
		A.B ab=a.new B();//A.B AŬ������ �Ӿȿ� �ִ� BŬ����
		ab.b=300;
		ab.bM();

	}

}
class A{
	
	int a=10;
	void aM() {
		System.out.println(a);
		//b=b+100;// ���� Ŭ������ ������ ����A ����
		//bM();//���� Ŭ������ �޼ҵ带 ����� ������
	}
	static int sa=200;//���� ��� �����Ҷ� �̸� ���� �޸𸮿� �ø���
	static void saM() {
		System.out.println(sa);
		//System.out.println(b);//new �ϰ� ����Ѵ�
		//System.out.println(a);static  �پ� �ִ� �޼ҵ�� �̸� �ö󰡱� ���� ������.
//		aM();
//		bM();
	}
	
	class B{
		//a=a+100; ���� �޼ҵ� �ȿ� ���ض� ��� ����ϴ� �ϴµ� Ŭ������ �༭ �ȵ�
		//aM();���� �޼ҵ�ȿ� �޼ҵ� ȣ���ϰ� ����ؾ��ϴµ� Ŭ�������� ����־ �ȵ�
		int b=20;
		void bM(){
			a=a+100;//���� Ŭ�������� �ܺ� Ŭ���� �ʵ带 ����� �� �ִ�
			aM();// ���� Ŭ�������� �ܺ� Ŭ������ �޼ҵ� ȣ���� �� �ִ�
			System.out.println( b );
		}
//		static int sb=200;//A Ŭ������ new�� �Ǳ� ���̴ϱ�
//		static void sbM() {
//			
//		}
	  }
}
