package javaApp1.ch12.sec01;

public class EqulaEx2 {

	public static void main(String[] args) {
		Netplex n1=new Netplex("100","a123","p123");
		Netplex n2=new Netplex("100","a124","p1234");
		Netplex n3=new Netplex("100","a125","p1235");
		Netplex n4=new Netplex("100","a126","p1237");
		
		Netplex n5=new Netplex("200","a125","p1235");
		Netplex n6=new Netplex("300","a126","p1237");
		if(n5.equals(n6)) {
			System.out.println("���� ��ü");
		}else {
			System.out.println("�ٸ� ��ü");
		}
	 }
	}
class Netplex{
	    String key;
		String id;
		String pwd;
	
	
	public Netplex (String key,String id,String pwd) {
		this.key=key;
		this.id=id;
		this.pwd=pwd;
	}
	
@Override
public int hashCode() {
// TODO Auto-generated method stub
return key.hashCode();
}

@Override
public boolean equals(Object obj) {
	if(obj instanceof Netplex) {
		Netplex np=(Netplex) obj;
	//}if(this.key.equals(np.key)) {
		return true;
	}return false;

	//return super.equals(obj);
}
}
