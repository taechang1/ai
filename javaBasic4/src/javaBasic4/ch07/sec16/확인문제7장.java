package javaBasic4.ch07.sec16;

public class Ȯ�ι���7�� {
	public void action(A a) {
		a.method1();
		if(a instanceof C) {//c ��ü �� ����
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
