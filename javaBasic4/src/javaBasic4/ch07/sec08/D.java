package javaBasic4.ch07.sec08;

import javaBasic4.ch07.sec07.A;

public class D extends A {
	
	public void method1() {
		this.field="value";
		this.method1();
	}
	
//	public void method() {
//	A a= new A();
//	a.fied="value";
//	a.method();
	//}
}
