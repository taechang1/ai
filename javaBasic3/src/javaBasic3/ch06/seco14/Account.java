package javaBasic3.ch06.seco14;

public class Account {
	String ���¹�ȣ;
	String ������;
	int �ʱ��Աݾ�;
	int �ܰ�;

	public Account() {
		super();
	}
	public String get���¹�ȣ() {
		return ���¹�ȣ;
	}

	public void set���¹�ȣ(String ���¹�ȣ) {
		this.���¹�ȣ = ���¹�ȣ;
	}

	public String get������() {
		return ������;
	}

	public void set������(String ������) {
		this.������ = ������;
	}

	public int get�ʱ��Աݾ�() {
		return �ʱ��Աݾ�;
	}

	public void set�ʱ��Աݾ�(int �ʱ��Աݾ�) {
		this.�ʱ��Աݾ� = �ʱ��Աݾ�;
	}

	public int get�ܰ�() {
		return �ܰ�;
	}

	public void set�ܰ�(int �ܰ�) {
		this.�ܰ� = �ܰ�;
	}

	
	
	public Account(String ���¹�ȣ, String ������, int �ʱ��Աݾ�, int �ܰ�) {
		super();
		this.���¹�ȣ = ���¹�ȣ;
		this.������ = ������;
		this.�ʱ��Աݾ� = �ʱ��Աݾ�;
		this.�ܰ� = �ܰ�;
	}
	

}
