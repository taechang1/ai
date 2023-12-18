package JavaBacic6.ch09.sec04;

public class OutterExample {

	public static void main(String[] args) {
		
		
		Outter o =new Outter();
		// iaM()호출하려면
		//1 내부를 객체화 한다 2.메소드 호출한다
		Outter.Inner i =o.new Inner();
		i.iaM();

	}

}
class Outter{
	int a =10;
	void aM() {
	}
	static int sa=20;
	static void saM() {
	}
	
	class Inner{
		int ia =100;
		void iaM() {
			ia=ia+20;
			a=a+20;
			aM();
			Outter.sa=Outter.sa +100;
			Outter.saM();
		};
	}
		
		
	
	
}

