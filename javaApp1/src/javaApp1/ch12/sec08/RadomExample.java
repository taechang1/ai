package javaApp1.ch12.sec08;

import java.util.Arrays;
import java.util.Random;

public class RadomExample {

	public static void main(String[] args) {
		// ���ù�ȣ
		int[] selectNumber=new int[6];
		Random random =new Random();
		System.out.println("���ù�ȣ:");
		for(int i=0;i<6;i++) {
			selectNumber[i]=random.nextInt(45)+1;
			System.out.println(selectNumber[i]+" ");
			
		}
		System.out.println();
		
		//��÷ ��ȣ
		int [ ] winningNumber=new int[6];
		random=new Random(5);
		System.out.println("��÷��ȣ:");
		for(int i=0;i<6;i++) {
			winningNumber[i]=random.nextInt(45)+1;
			System.out.println(winningNumber[i]+" ");
		}
	//��÷����
		Arrays.sort(selectNumber);
		Arrays.sort(winningNumber);
		boolean result=Arrays.equals(selectNumber, winningNumber);
		System.out.println("��÷����:");
		if(result) {
			System.out.println("1� ��÷ �Ǿ����ϴ�");
		}else {
			System.out.println("��÷���� �ʾҽ��ϴ�");
		}
	}

}
