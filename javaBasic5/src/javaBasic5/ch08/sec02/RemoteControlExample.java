package javaBasic5.ch08.sec02;

public class RemoteControlExample {

	public static void main(String[] args) {
		RemoteControl rc;
		rc= new Television();
		rc.turnOn();
		rc.setVolum(5);
		rc.turnOff();
		
		rc= new Smartphone();
		rc.turnOn();
		rc.setVolum(5);
		rc.turnOff();
		
		rc.defailtM();
		RemoteControl.staticM();
	}

}
