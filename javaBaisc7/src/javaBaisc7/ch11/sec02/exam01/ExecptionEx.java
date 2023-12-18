package javaBaisc7.ch11.sec02.exam01;

public class ExecptionEx {
	public static void printlength(String data) {
		int result = data.length();
		System.out.print("문자수"+result);
		
	}

	public static void main(String[] args) {

//  형식
//		try {
//		int a=10;
//		a=a/0;
//		}catch(예외명 변수 ) {
//		//위에 예외가 발생했을때 처리하는 코드작성
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
			System.out.println("분모가 0이면 안된다.");
	    }catch(ArrayIndexOutOfBoundsException e) {
		System.out.println("배열의 인덱스 범위가 벗어났습니다.");
	    }catch(NullPointerException e) {
	    	e.printStackTrace();
	    	System.out.println("null 로 연결해서 오류가 났습니다");
//	    } catch (ClassNotFoundException e) {
//			System.out.println("클래스 명이 틀렸습니다");
			e.printStackTrace();
	    }catch (Exception e) {
			System.out.println("모든 예외의 부모 클래스");
		}finally {
	    	//예외상관없이 꼭 해야하는곳
	    	System.out.println("DB닫기");
			System.out.println("로그오프하기.");
	    	
	    }
	}
}
