package javaBasic3.ch06.seco14;

import java.util.Scanner;

public class BankApplication {

    Scanner sc=new Scanner(System.in);	
	
	Account[] accounts=new Account[100];
	int count=0;
	//���� ���� 
	public void ���»���() {
		accounts[count]=new Account();
		System.out.println("-----");
		System.out.println("���� ����");
		System.out.println("-----");
		System.out.println("���� ��ȣ");
		accounts[count].���¹�ȣ=sc.next();
		System.out.println("������");
		accounts[count].������=sc.next();
		System.out.println("�ʱ��Աݾ�:");
		accounts[count].�ʱ��Աݾ�=sc.nextInt();
		accounts[count].set�ܰ�(accounts[count].�ʱ��Աݾ�);
		System.out.println("���:���°� �����Ǿ����ϴ�.");
	    count=count+1;
		
	
	}//���� ���
	public void ���¸��() {
		System.out.println("-----");
		System.out.println("���� ���");
		System.out.println("-----");
		System.out.println("���� ��ȣ");
		for(int i=0;i<count;i++) {
			System.out.println(accounts[i].get���¹�ȣ()+" "+accounts[i].get������()+" "+accounts[i].get�ܰ�());
		}
		
	}
	
	//����
	
	
	public void ����() {
		System.out.println("-----");
		System.out.println("����");
		System.out.println("-----");
		System.out.println("���� ��ȣ");
		String �����Ұ��¹�ȣ=sc.next();
		// ȫ�浿 ���ڹ� �������� Ȯ���ϱ�
		//���� �������� Ȯ���ϱ�
		System.out.print("���ݾ�");
		int ���ݱݾ� =sc.nextInt();
		int i;
		boolean flag=false;
		for(i=0;i<count;i++) {
			if(�����Ұ��¹�ȣ.equals(accounts[i].get���¹�ȣ() )) {
			
				flag=true;//ȫ�浿 �ܰ��� ���� �ݾ��� ���ؼ� ȫ�浿 �ܰ��� �־��
				break;}//�ݺ��� �׸��ΰ� i�������� ����� �־�� �ϳ�
			accounts[i].�ܰ�=accounts[i].get�ܰ�()+���ݱݾ�;
			}
		if(!flag)System.out.println("���¹�ȣ�� Ʋ�Ƚ��ϴ�. �����ϼ���.");
		}
			
	//���
public void ���() {
	System.out.println("-----");
	System.out.println("���");
	System.out.println("-----");
	System.out.println("���� ��ȣ");
    String ����Ұ��¹�ȣ=sc.next();

   System.out.print("��ݾ�");
    int ��ݱݾ� =sc.nextInt();
    int i;
    boolean flag=false;
   for(i=0;i<count;i++) {
	   if(����Ұ��¹�ȣ.equals(accounts[i].get���¹�ȣ() )) {
		   
		flag=true;
		if(accounts[i].�ܰ�<��ݱݾ�) System.out.println("�ܰ��� �����մϴ�");
		break;}
	accounts[i].�ܰ�=accounts[i].get�ܰ�()-��ݱݾ�;
	}
if(!flag)System.out.println("���¹�ȣ�� Ʋ�Ƚ��ϴ�. �����ϼ���.");
	
}
}
