package javaBaisc7.ch11.sec02.exam01;

public class ExecptionEx {
	public static void printlength(String data) {
		int result = data.length();
		System.out.print("���ڼ�"+result);
		
	}

	public static void main(String[] args) {

//  ����
//		try {
//		int a=10;
//		a=a/0;
//		}catch(���ܸ� ���� ) {
//		//���� ���ܰ� �߻������� ó���ϴ� �ڵ��ۼ�
//		}
		try {
			int a=10;
			a=a/2;
			System.out.print(a);
			int[]iArr = {10,20,30};
			System.out.print(iArr[2]);
			
			printlength("this is java");
			printlength("ab");
			Class.forName("java.lang.ABC");
			
		}catch(ArithmeticException e) {
			System.out.println("�и� 0�̸� �ȵȴ�.");
	    }catch(ArrayIndexOutOfBoundsException e) {
		System.out.println("�迭�� �ε��� ������ ������ϴ�.");
	    }catch(NullPointerException e) {
	    	e.printStackTrace();
	    	System.out.println("null �� �����ؼ� ������ �����ϴ�");
//	    } catch (ClassNotFoundException e) {
//			System.out.println("Ŭ���� ���� Ʋ�Ƚ��ϴ�");
			e.printStackTrace();
	    }catch (Exception e) {
			System.out.println("��� ������ �θ� Ŭ����");
		}finally {
	    	//���ܻ������ �� �ؾ��ϴ°�
	    	System.out.println("DB�ݱ�");
			System.out.println("�α׿����ϱ�.");
	    	
	    }
	}
}
