package javaBasic4.ch07.sec14;

public class DriverExample {

	public static void main(String[] args) {
		Driver driver=new Driver();
		
		Bus bus =new Bus();
		driver.drive(bus);
		
		Taxi taxi =new Taxi();
		driver.drive(taxi);
		
		System.out.println(bus instanceof Bus);
		System.out.println(taxi instanceof Taxi);// taxi 라는 참조 변수로 taxi라느 개체를 참조 가능
		System.out.println(bus instanceof Vehicle);
	}

}
