package javaBasic4.ch07.sec15;

public class PhoneExample {

	public static void main(String[] args) {
		// 326
		Play play= new Play();
		SmartPhone s = new SmartPhone();
		play.playing(s);
		play.stop(s);

		Iphone iphone = new Iphone();
		play.playing(iphone);
		play.stop(iphone);
		
		//Phone phone = new phone();//�߻� Ŭ������ ��üȭ �Ҽ�����
	}

}
