package JavaBacic6.ch09.sec05;

public class Ant2Ex {

	public static void main(String[] args) {
		CImpl ci= new CImpl();
		ci.cM();
		C ci2=new CImpl();
		ci2.cM();//
			C ci3=new C() {
	
				@Override
				public void cM() {
					// TODO Auto-generated method stub
					
				}
				
			};//인터페이스는 new할수 없다 . new 객체(){내용};은 익명구현(자식)객체 이다
			ci3.cM();

	}

}
interface C {
	abstract void cM();//추상 메소드
}
	class CImpl implements C{

		@Override
		public void cM() {
			System.out.println("구현 클래스 (자식) 클래스");
			
		}
		
	}

