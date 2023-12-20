package javaApp1.ch12.sec04;
import java.util.Calendar;
public class CalenderExample {

	public static void main(String[] args) {
		Calendar now=Calendar.getInstance();
		int a1=now.get(Calendar.YEAR);
		int a2=now.get(1);
		System.out.println(a1+" "+a2);
		int a3=now.get(Calendar.MONTH)+1;//상수명 월은 0월부터 11월
		int a4=now.get(2)+1;//상수값
		System.out.println(a3+" "+a4);
		int a5=now.get(Calendar.DAY_OF_MONTH);
		int a6=now.get(5);
		System.out.println(a5+" "+a6);
		System.out.println(a3+" "+a4);
		int a7=now.get(Calendar.DAY_OF_WEEK);
		int a8=now.get(7);
		System.out.println(a7+" "+a8);
		int a9=now.get(Calendar.AM_PM);
		int a10=now.get(1);
		System.out.println(a9+" "+a10);
				
        if(a9==Calendar.AM) {
        	System.out.println("오전");
        }else {
        	System.out.println("오후");
        }
        int a11=now.get(Calendar.HOUR);
        int a12=now.get(10);
        System.out.println(a11+" "+a12);
        int a13=now.get(Calendar.MINUTE);
        int a14=now.get(12);
        System.out.println(a13+" "+a14);
        int a15=now.get(Calendar.SECOND);
        int a16=now.get(13);
        System.out.println(a15+" "+a16);
        //2023년 12월 20일 11시 53분
        System.out.println(now.get(Calendar.YEAR)+"년"+(now.get(Calendar.DAY_OF_MONTH)+1)+"월");
	}

}
