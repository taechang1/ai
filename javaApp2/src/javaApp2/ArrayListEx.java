package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// list Ư¡ ������ �ִ� �ߺ� ���� �ִ�
		int[]iarr= {1,2};
		for(int i : iarr) {
			System.out.println(i);
		}
		for (int i=0;i<iarr.length; i++) {
			System.out.println(iarr[i]);
		}
		//3,4 �߰��ϰ� �ʹ� -- �ȵȴ�
		//{1,2,3,4}
		
		//list�� ���� Ŭ������ ArrayList�� �̿�
		ArrayList<Integer> arrList=new ArrayList<Integer>();
		//<E>���׸� �ڷ��� ���� �̸� �����ϴ� ��
		arrList.add(1);
		arrList.add(2);
		System.out.println(arrList.size());//ArrayList �ȿ� ��� ��Ұ� �ִ����� ��ȯ
		//3,4 �߰��ϱ�
		arrList.add(3);
		arrList.add(4);
		//0�� �ε����� -7�� �ֱ�
		arrList.add(0,-7);
		//��ü�� ����ϰ�ʹ� . �ݺ��� ����� ��
		for(int i =0; i<arrList.size(); i++) {// i=0 1 2 3 4
			System.out.println(arrList.get(i));//�ε��� ��ȣ�� �ִ� ��Ҹ� ����ϱ� 
		}
		//���ڿ��� ArrList �ֱ�
		ArrayList<String>sArr= new ArrayList<String>();
		//��� �� �� �ٳ���
		sArr.add("���");
		sArr.add("��");
		sArr.add("��");
		sArr.add("�ٳ���");
		sArr.add("���");
		sArr.add("���");
		// �ְ� �ٳ� ���̿� ���ξ��� �ֱ�
		sArr.add(3,"���ξ���");
		//��� �� ���̿� �޷� �ֱ�
		sArr.add(1,"�޷�");
		//���� õ�������� �����ϱ�
		//��Ʈ set()
		sArr.set(3, "õ����");
		//�ٳ��� �����ϱ� remove()
		sArr.remove(5);
		
		//��ü ����ϱ�
		for(int i =0; i<sArr.size(); i++) {
			System.out.println(sArr.get(i)+" ");
		}
		//���Ͼ����� �ֽ��ϱ�? ��Ʈ contains()
		//��� �����ϴ�

		if (sArr.contains("���ξ���")) {
			System.out.println("�ֽ��ϴ�");
		}else {
			System.out.println("�����ϴ�");
		}
		
		//��� �� �־��?
		if (sArr.contains("���")&& sArr.contains("���ξ���")) {
			System.out.println("�ֽ��ϴ�");
		}else {
			System.out.println("�����ϴ�");
		}
		//���� ������ ��� ������?
		//�迭����Ʈ�� ��� �ֳ���? isEmpty()
		//���Կ� ������ ������ ��� ġ���ּ���(�����)
		if (!sArr.isEmpty()) {
			sArr.clear();//��Ҹ� ��� �� �����
			System.out.println("���� ������ ��� ġ�����ϴ�");
		}
		//��ü ����ϱ�
		for(int i =0; i<sArr.size(); i++) {
			System.out.println(sArr.get(i)+" ");
			}
		
		

	}

}
