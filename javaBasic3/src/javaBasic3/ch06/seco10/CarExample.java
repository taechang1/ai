package javaBasic3.ch06.seco10;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car myCar=new Car();
		
		System.out.println("회사명"+myCar.company);
		System.out.println("모델명:"+myCar.model);
		System.out.println("색깔:"+myCar.color);
		System.out.println("현제속도:"+myCar.speed);
		System.out.println("최대속도:"+myCar.maxSpeed);	
		
		myCar.speed=60;
		System.out.println("수정된 속도:"+myCar.speed);
		Car sCar=new Car("삼성자동차","sm3","흰색",370,0);
		System.out.println("회사명"+sCar.company);
		System.out.println("모델명:"+sCar.model);
		System.out.println("색깔:"+sCar.color);
		System.out.println("현제속도:"+sCar.speed);
		System.out.println("최대속도:"+sCar.maxSpeed);	
	}
//	Car car3=new Car();
//	car3.setCompany("독일자동차");
//	car3.set

}
