package javaBasic3.ch06.seco12;

public class CompterExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Computer computer=new Computer();
		
		int result=computer.sum(1,2,3);
		System.out.println(result);
		result=computer.sum(1,2,3,4,5);
		System.out.println(result);
		 result=computer.sum(1,2,3,4,5,6,7,8);
		System.out.println(result);
		double avgResult=computer.avg(1.1,2.2,3.3);
		System.out.println(avgResult);
		avgResult=computer.avg(1,2,3);
		System.out.println(result);
		
		
	}

}
