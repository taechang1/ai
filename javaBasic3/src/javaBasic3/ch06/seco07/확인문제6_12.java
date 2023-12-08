package javaBasic3.ch06.seco07;

public class 확인문제6_12 {

	public static void main(String[] args) {
		
		//Scanner sc= Scanner(System.in);
		
		System.out.print("id>");
		
		//String id = sc.next();
		
		MemverServices memberServices=new MemverServices();
        boolean result= memberServices.login("hong","12345");
        
        if(result) {
        	System.out.println("로그인 되었습니다");
        	memberServices.logout("hong");
        }else {
        	System.out.println("id또는 passwrod가 올바르지 않습니다");
        }

	}

}
