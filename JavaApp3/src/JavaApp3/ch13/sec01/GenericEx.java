package JavaApp3.ch13.sec01;

public class GenericEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Box<Integer> intBox = new Box<Integer>();
		intBox.content=100;
		
		Box StrBox =new Box();
		StrBox.content="ȫ�浿";
		
		BoxChild<Integer,String> bc=new BoxChild<Integer,String>();
		bc.content=10;
		bc.kind="aaa";
		
		InterImpl<Double> iti =new InterImpl<Double>();
		InterImpl<Boolean>iti2= new InterImpl<Boolean>();

	}

}
class Box<T>{
	T content;//������ ���� ���� ���� ���ڿ� ��ü
}
class BoxChild<T,K> extends Box<T>{
	K kind;
}
interface Inter<A>{
	A moethod1();
}
class InterImpl<A> implements Inter<A>{

	@Override
	public A moethod1() {
		// TODO Auto-generated method stub
		return null;
	}
	
}