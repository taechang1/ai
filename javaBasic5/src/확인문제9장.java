import javaBasic5.ch08.sec01.Aimpl;

public class Ȯ�ι���9�� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1��1 2�� 3 3���� 4
		Aimpl a = new Aimpl();
		//Driver d=new Driver();
		//d.a=new Aimpl();
		//d.drive(a);
		//���� ����ȯ
		//�ڵ� ����ȯ

	}
	class Driver{
	//	A.a;
		void drive(A a) {
			
		}
	}
interface A{
	static final int a=10;
	abstract void aM();
	default void dM() {}
	static void sM() {
}
class Aimpl implements A{

	@Override
	public void aM() {
		System.out.println(a);
		
	}
//	a=a+10;
}
}
}