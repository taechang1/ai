package javaApp1.ch12.sec01;

public class EqualEx {

	public static void main(String[] args) {
		// 동등객체 비교 알고리즘
		//1단계  hashCode가같은가 2단계 equals()가 같은가?
		//hashCode는 주기억 장치에 저장될 때 주소를 만들어 주는코드임
		Student s1=new Student("a123","p123");
		System.out.println(s1.hashCode());
		Student s2=new Student("a1234","p123");
		System.out.println(s2.hashCode());
		//개발자 요구사항있는데 id와 pwd같으면 동등 객체입니다
		if (s1.equals(s2)) {
			System.out.println("같은사람");
		}else {
			System.out.println("다른사람");
		}

	}

}
class Student{
	String id;
	String pwd;
	public Student (String id,String pwd) {
		this.id=id;
		this.pwd=pwd;
		
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return id.hashCode();
	}@Override
	public boolean equals(Object obj) {
		if (obj instanceof Student) {
			Student st =(Student)obj;
			if (this.id.equals(st.id)&&this.pwd.equals(st.pwd) ){
				//this .id첫번째 객체의 a123있음 st.id는 두번째 객체
				//this .pwd첫 번째 객체의 p1234이고 st.id는 두번째 개체의 p1235
			}
		}
		return super.equals(obj);
	}
}