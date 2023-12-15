import javaBasic5.ch08.sec01.Aimpl;

public class 확인문제9장 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1번1 2번 3 3번에 4
		Aimpl a = new Aimpl();
		//Driver d=new Driver();
		//d.a=new Aimpl();
		//d.drive(a);
		//강제 형변환
		//자동 형변환

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