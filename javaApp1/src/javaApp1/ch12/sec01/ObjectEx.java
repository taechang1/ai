package javaApp1.ch12.sec01;

public class ObjectEx extends Object{

	public static void main(String[] args) {
		Member obj1=new Member("blue");
		Member obj2=new Member("blue");
		Member obj3=new Member("red");
		if(obj1==obj2) {
			System.out.println("����");
		}else {
			System.out.println("�ٸ���");
		}
		if(obj1.equals(obj2) ) {
			System.out.println("����");
		}else {
			System.out.println("�ٸ���");
		}
		if(obj1.equals(obj3) ) {
			System.out.println("����");
		}else {
			System.out.println("�ٸ���");
		}
	}

}
class Member{
	public String id;
	public String pwd;
	public String name;
	public Member(String id) {
		this.id=id;
	}
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Member) {
			Member m=(Member)obj;
		if(this.id.equals(m.id)){
			return true;
		}
		}
		return false;
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
}
