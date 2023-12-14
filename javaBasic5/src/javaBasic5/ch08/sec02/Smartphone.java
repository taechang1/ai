package javaBasic5.ch08.sec02;

public class Smartphone implements RemoteControl {
	
	private int voiume;
	private int volum;

	@Override
	public void turnOn() {
		System.out.println("핸드폰을 킵니다");
		
	}

	@Override
	public void turnOff() {
		System.out.println("핸드폰을 끝니다");
		
	}

	@Override
	public void setVolum(int volum) {
		if(volum>RemoteControl.MAX_VOLUME) {
			this.volum=RemoteControl.MAX_VOLUME;
		}
	}

	@Override
	public void qrRead() {
		// TODO Auto-generated method stub
		
	}

}
