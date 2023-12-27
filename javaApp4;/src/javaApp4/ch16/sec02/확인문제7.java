package javaApp4.ch16.sec02;

public class Ȯ�ι���7 {
	
	public static int[]scores= {10,50,3};
	
	public static int maxOrMin(Operator operator) {
		int result=scores[0];
		for(int score: scores) {
			result=operator.apply(result,score);
		}
		return result;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int max=maxOrMin( 
				(int x, int y)->(x>y)?x:y
				);
		 System.out.println("�ִ밪"+max);
		 int min=maxOrMin( 
					(int x, int y)->(x<y)?x:y
				 );
							 System.out.println("�ּҰ�"+min);
					
	}

}
@FunctionalInterface
interface Operator{
	public int apply(int x,int y);
}