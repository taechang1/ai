package javaBasic5.ch08.sec02;

public class Smartphone implements RemoteControl {
	
	private int voiume;
	private int volum;

	@Override
	public void turnOn() {
		System.out.println("�ڵ����� ŵ�ϴ�");
		
	}

	@Override
	public void turnOff() {
		System.out.println("�ڵ����� ���ϴ�");
		
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
