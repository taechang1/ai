package javaBasic5.ch08.sec02;
//������ �߻�޼ҵ�� �����Ѵ�
public interface RemoteControl {
	//��� ������ �ʴ� �� ������ �ٲ��� ���ϴ� ��
	
 final static int MAX_VOLUME=10;
 final static int MIX_VOLUME=0;
 //�߻� �޼ҵ� ���� abstrcat�� ����
 void turnOn();
 void turnOff();
 void setVolum(int volum);
 
 void qrRead();
 
 default void defailtM() {
	 System.out.print("QR�ڵ� �Է¹ޱ�");
//	 for(int i=0;i<10;i++) {
//	 System.out.println(sum);
 }
 static void staticM() {
	 System.out.println("īī���� �����ޱ�");
	
	
 }
private int privateM(int i) {
	return i+10;
	
}

}
//�ڹٰ� ������ �Ǹ鼭 �߰��� �޼ҵ�
//����Ʈ �޼ҵ�
//���� �޼ҵ�
//private �޼ҵ�
//private �޼ҵ�
