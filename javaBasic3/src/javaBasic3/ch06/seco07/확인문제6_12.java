package javaBasic3.ch06.seco07;

public class Ȯ�ι���6_12 {

	public static void main(String[] args) {
		
		//Scanner sc= Scanner(System.in);
		
		System.out.print("id>");
		
		//String id = sc.next();
		
		MemverServices memberServices=new MemverServices();
        boolean result= memberServices.login("hong","12345");
        
        if(result) {
        	System.out.println("�α��� �Ǿ����ϴ�");
        	memberServices.logout("hong");
        }else {
        	System.out.println("id�Ǵ� passwrod�� �ùٸ��� �ʽ��ϴ�");
        }

	}

}
