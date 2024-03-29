
public class LamdaEx {

	public static void main(String[] args) {
		// 방법1
		Inter01Impl i01=new Inter01Impl();
		i01.a();
		//방법2- 익명 구현클래스
		Inter01 i001	=new Inter01() {
		@Override
		public void a() {
			System.out.println("익명 구현 클래스");
			
		}
		};
		i001.a();//메소드 호출
		
		Inter02 i002=new Inter02() {
			@Override
			public void b() {
				System.out.println("익명 구현 클래스2");
				
			}
			
		};
		
		//방법3-람다식 인터페이스안에 추상메소드 1개밖에없는 경우
	Inter01 lamda001=()-> System.out.println("람다로 구현 클래스");
	lamda001.a();
	Inter02 lamda002=()-> System.out.println("람다로 구현 클래스2");
	lamda002.b();


}}
interface Inter01{
	void a();
}
interface Inter02{
	void b();
	
}

class Inter01Impl implements Inter01{
	@Override
	public void a() {
		// TODO Auto-generated method stub
		System.out.println("인터페이스를 구현한 클래스");
	}
}
