package javaApp5.ch18.sec02;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public class ObjectStreamEx {

	public static void main(String[] args) {
		// Member클래스의 형태를 스트림으로 만들어서 외부로 보내기
		try {
			/*
			OutputStream os=new FileOutputStream("D:/ai/java study//data/Member3.dat");
			BufferedOutputStream bos =new BufferedOutputStream(os);
			ObjectOutputStream oos=new ObjectOutputStream(bos);
			//ObjectOutputStream 을 하려면 member객체를 Serializable 해주면된다
			Member m1 =new Member("fall","단풍이",10);
			oos.writeObject(m1);
			oos.flush();
			oos.close();
			
			 */
			 
			//외부 파일을 읽어서
			InputStream is=new FileInputStream("D:/ai/java study//data/Member3.dat");
			//성능(속도)을 향상 시켜서
			BufferedInputStream bis =new BufferedInputStream(is);
			//스크림 객체로 만들어서
			ObjectInputStream ois= new ObjectInputStream(bis);
			//읽어와서
			Member iM=(Member)ois.readObject();
			System.out.println(iM);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
class Member implements Serializable{
	private static final long serialVersionUID=-5413711528933648809L;
	String id;
	String name;
	int age;
	
	public Member(String id, String name, int age) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id+" "+name+" "+age;
	}
}