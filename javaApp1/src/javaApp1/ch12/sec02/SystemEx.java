package javaApp1.ch12.sec02;

import java.io.IOException;

public class SystemEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.err.println("���� �κ� ��� ����������");
		System.out.println(System.getProperty("os.name"));
		System.out.println(System.getProperty("user.name"));
		System.out.println(System.getProperty("user.home"));
		System.out.println(System.getProperty("user.dir"));
		System.out.println(System.getProperty("java.home"));
		System.out.println(System.currentTimeMillis());//�и��� (1/1000��)���� ���� �ð� ����
		System.out.println(System.nanoTime());// ������ 1/10^9��
		try {
			int aa= System.in.read();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.exit(0);
	}

}
