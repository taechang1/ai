package javaBasic3.ch06.seco07;

public class 확인문제6장18번 {

	public static void main(String[] args) {
		//
		ShopService obj1= ShopService.getInstance(); 
		ShopService obj2= ShopService.getInstance();
		System.out.println(obj1);
		System.out.println(obj2);
		
		if(obj1==obj2) {
			System.out.println("같은 ShopService객체입니다.");
			
		}else {
			System.out.println("다른 ShopService객체입니다.");
		}
		

	}

}
