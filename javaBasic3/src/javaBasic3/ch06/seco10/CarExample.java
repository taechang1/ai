package javaBasic3.ch06.seco10;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car myCar=new Car();
		
		System.out.println("ȸ���"+myCar.company);
		System.out.println("�𵨸�:"+myCar.model);
		System.out.println("����:"+myCar.color);
		System.out.println("�����ӵ�:"+myCar.speed);
		System.out.println("�ִ�ӵ�:"+myCar.maxSpeed);	
		
		myCar.speed=60;
		System.out.println("������ �ӵ�:"+myCar.speed);
		Car sCar=new Car("�Ｚ�ڵ���","sm3","���",370,0);
		System.out.println("ȸ���"+sCar.company);
		System.out.println("�𵨸�:"+sCar.model);
		System.out.println("����:"+sCar.color);
		System.out.println("�����ӵ�:"+sCar.speed);
		System.out.println("�ִ�ӵ�:"+sCar.maxSpeed);	
	}
//	Car car3=new Car();
//	car3.setCompany("�����ڵ���");
//	car3.set

}