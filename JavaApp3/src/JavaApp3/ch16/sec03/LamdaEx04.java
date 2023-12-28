package JavaApp3.ch16.sec03;

public class LamdaEx04 {

	public static void main(String[] args) {
		// 706 메소드 참조
		 Person person= new Person();
		 //방법2 익명 구현 객체 코드
//		 Calcuable  calcuable= new Calcuable() {
//			
//			@Override
//			public double calc(double x, double y) {
//				Computer.staticMethod(x, y);
//				return 0;
//			}
//		};
		 //방법3 람다식으로 변경
		// Calcuable calcuable=(double x,double y)->{Computer.staticMethod(x, y);return 0;};
		 //Calcuable calcuable=(x, y)->Computer.staticMethod(x, y);
		 //방법4 메소드 참조
		 Calcuable calcuable=Computer::staticMethod;
		 //인터패이스 변수 =클래스명::클래스안에 있는 메소드명
		 //인터페이스 추상메소드로 입력하여 클래스 안에 있는 메소드를 수행(결과) 출력해라
		 person.action(calcuable);
		 Computer computer =new Computer();
		 //방법2 익명 구현 객체- 내용 Computer.instanceMethod()호출하라
//		 Calcuable calcuable1=new Calcuable() {
			
//			@Override
//			public double calc(double x, double y) {
//				return computer.instanceMethod(x,y);
//			}
//		};
		//방법3 람다식
		//Calcuable calcuable1=(double x,double y)->{return computer.instanceMethod(x, y);return 0;};
		//Calcuable calcuable1=(x, y)-> computer.instanceMethod(x, y);
		Calcuable calcuable1=computer::instanceMethod;
		 person.action(calcuable1);

	
		 }

}
@FunctionalInterface
interface Calcuable{
	double calc(double x,double y);//추상메소드
}
class Person{
	public void action(Calcuable calcuable) {
		double result= calcuable.calc(10, 4);
		System.out.println("결과"+result);
	}
}
class Computer{
	public static double staticMethod (double x,double y) {
		return x+y;
	}
	public  double instanceMethod(double x,double y){
		return x*y;
	}
}