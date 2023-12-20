import java.util.StringTokenizer;

public class StringTokenizerEx {

	public static void main(String[] args) {
		String data1="홍길동$이수홍,박연수";
		//결과화면 홍길동 이수홍 반연수
		//방법1) String 클래스 split() 사용
		//방법2)StringTokenizer클래스 사용
		
		//방법1)
		String[] arr=data1.split("$|,");
		for(int i=0; i<arr.length;i++) {
			System.out.println(arr[i]);
		}
		//향상된for문
		for(String i:arr) {
			System.out.println(i);
			
		}
		//방법2)
		String data2="홍길동/이수홍/박연수/이순신/최수진";
		StringTokenizer st=new StringTokenizer(data2,"/");
		while(st.hasMoreTokens()) {
			System.out.println(st.nextToken());
		}
		String data3="사과-배-귤-바나나-포도";
		StringTokenizer xt=new StringTokenizer(data3,"-");
		while(xt.hasMoreTokens()) {
			System.out.println(xt.nextToken());
		
	}
		String data4="자바*+파이션*+오라클*+텐서플로어";
		StringTokenizer st2=new StringTokenizer(data4,"*+");
		while(st2.hasMoreTokens()) {
			System.out.println(st2.nextToken());
		
	}

}
	}
