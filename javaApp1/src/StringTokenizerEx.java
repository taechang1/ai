import java.util.StringTokenizer;

public class StringTokenizerEx {

	public static void main(String[] args) {
		String data1="ȫ�浿$�̼�ȫ,�ڿ���";
		//���ȭ�� ȫ�浿 �̼�ȫ �ݿ���
		//���1) String Ŭ���� split() ���
		//���2)StringTokenizerŬ���� ���
		
		//���1)
		String[] arr=data1.split("$|,");
		for(int i=0; i<arr.length;i++) {
			System.out.println(arr[i]);
		}
		//����for��
		for(String i:arr) {
			System.out.println(i);
			
		}
		//���2)
		String data2="ȫ�浿/�̼�ȫ/�ڿ���/�̼���/�ּ���";
		StringTokenizer st=new StringTokenizer(data2,"/");
		while(st.hasMoreTokens()) {
			System.out.println(st.nextToken());
		}
		String data3="���-��-��-�ٳ���-����";
		StringTokenizer xt=new StringTokenizer(data3,"-");
		while(xt.hasMoreTokens()) {
			System.out.println(xt.nextToken());
		
	}
		String data4="�ڹ�*+���̼�*+����Ŭ*+�ټ��÷ξ�";
		StringTokenizer st2=new StringTokenizer(data4,"*+");
		while(st2.hasMoreTokens()) {
			System.out.println(st2.nextToken());
		
	}

}
	}
