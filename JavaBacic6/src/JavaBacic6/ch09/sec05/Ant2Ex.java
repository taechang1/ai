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
				
			};//�������̽��� new�Ҽ� ���� . new ��ü(){����};�� �͸���(�ڽ�)��ü �̴�
			ci3.cM();

	}

}
interface C {
	abstract void cM();//�߻� �޼ҵ�
}
	class CImpl implements C{

		@Override
		public void cM() {
			System.out.println("���� Ŭ���� (�ڽ�) Ŭ����");
			
		}
		
	}

