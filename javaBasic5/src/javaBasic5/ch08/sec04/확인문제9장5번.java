package javaBasic5.ch08.sec04;

public class Ȯ�ι���9��5�� {

	public static void printSound(Soundable soundable) {
		//System.out.println(soundable.sound());

	}
	public static void name(String[]args) {
		Remocon r =new TV();
		r.powerOn();
		//printSound(new Cat());
		//printSound(new Dog());
	}
class Cat implements Soundable{
		
	}
	
class Dog implements Soundable{
	
}

}
interface Soundable{
	
}

interface Remocon{
	public void powerOn();
		
}
class TV implements Remocon{

	@Override
	public void powerOn() {

		System.out.println("Tv�� �մϴ�");
		
	}
	
}