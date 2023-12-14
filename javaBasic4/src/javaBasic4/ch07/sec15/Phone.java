package javaBasic4.ch07.sec15;

public abstract class Phone {
	
	String owner;
	public Phone() {
		// TODO Auto-generated constructor stub
	}
	public Phone(String owner) {
	    this.owner=owner;
	}
	public abstract void turnOn();
		
	
	public abstract void turnOff();
	
}
