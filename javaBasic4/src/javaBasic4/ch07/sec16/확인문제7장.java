package javaBasic4.ch07.sec16;

public class 확인문제7장 {
	public void action(A a) {
		a.method1();
		if(a instanceof C) {//c 객체 일 때만
			((C) a).methiod2();
		}
	}

	public static void main(String[] args) {
		
		// 12142
		MainMainActivity m =new MainMainActivity();
		m.onCreate();
		
//		action(new A());
//		action(new B());
//		action(new C());
	}

}
