package javaBasic5.ch08.sec02;
//역할을 추상메소드로 구현한다
public interface RemoteControl {
	//상수 변하지 않는 수 내용을 바꾸지 못하는 수
	
 final static int MAX_VOLUME=10;
 final static int MIX_VOLUME=0;
 //추상 메소드 선언 abstrcat룰 생ㄺ
 void turnOn();
 void turnOff();
 void setVolum(int volum);
 
 void qrRead();
 
 default void defailtM() {
	 System.out.print("QR코드 입력받기");
//	 for(int i=0;i<10;i++) {
//	 System.out.println(sum);
 }
 static void staticM() {
	 System.out.println("카카오톡 인증받기");
	
	
 }
private int privateM(int i) {
	return i+10;
	
}

}
//자바가 버전업 되면서 추가된 메소드
//디폴트 메소드
//정적 메소드
//private 메소드
//private 메소드
