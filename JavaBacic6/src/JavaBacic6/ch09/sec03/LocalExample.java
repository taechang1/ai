package JavaBacic6.ch09.sec03;

public class LocalExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LocalExample le=new LocalExample();
		le.localM();

	}
	public void localM() {
		int a =10;
	
		
    class AAA{
			int sa=100;
			void m() {
				System.out.println("�޼ҵ� �ȿ� �ִ� Ŭ������ �޼ҵ�");
			}
		}// end AAA
    AAA aaa =new AAA();//��ü ���� 
	aaa.m();//����ϱ�
	}
	

}
