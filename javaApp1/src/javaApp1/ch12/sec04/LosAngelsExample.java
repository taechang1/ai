package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelsExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TimeZone timeZone= TimeZone.getTimeZone("Amreica/Los_Angeles");
		TimeZone timeZone1= TimeZone.getTimeZone("CET");
		Calendar now=Calendar.getInstance(timeZone1);
		System.out.println(now.get(Calendar.DAY_OF_MONTH)+"월"+now.get(Calendar.DAY_OF_MONTH)+"일");
		System.out.println(now.get(Calendar.HOUR)+"시"+now.get(Calendar.MINUTE)+"분");
		String[]av=TimeZone.getAvailableIDs();
		//타임존 검색 "java timezone ids list"
		//
		for(String a:av) {
			System.out.println(a);
		}
		LocalDateTime now1=LocalDateTime.now();
		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy.MM.dd a HH:mm:ss");
		System.out.println("현재시간:"+now1.format(dtf));
		LocalDateTime now1After=now1.plusYears(1);
		//1년후
		System.out.println("1년후:"+now1After.format(dtf));
		//3년전
		LocalDateTime now3Befor=now1.minusYears(3);
		System.out.println("3년전:"+now3Befor.format(dtf));
		LocalDateTime now2WeekAfter=now1.plusWeeks(2);
		System.out.println("대출일:"+now1.format(dtf));
		System.out.println("반납일:"+now2WeekAfter.format(dtf));
	}

}
