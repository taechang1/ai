package javaBasic5.ch08.sec02;

public class Television implements RemoteControl {
	private int volume;

	@Override
	public void turnOn() {
		System.out.println("�ý����� �����ϴ�");
		
	}

	@Override
	public void turnOff() {
		System.out.println("�ý����� �����ϴ�");
		
	}

	@Override
	public void setVolum(int volum) {
		if(volum>RemoteControl.MAX_VOLUME) {
			this.volume=RemoteControl.MAX_VOLUME;
			
		}
		
	}

	@Override
	public void qrRead() {
		// TODO Auto-generated method stub
		
	}

}
