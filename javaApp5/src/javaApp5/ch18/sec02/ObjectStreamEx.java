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
		// MemberŬ������ ���¸� ��Ʈ������ ���� �ܺη� ������
		try {
			OutputStream os=new FileOutputStream("D:/ai/java study//data/Member.dat");
			BufferedOutputStream bos =new BufferedOutputStream(os);
			ObjectOutputStream oos=new ObjectOutputStream(bos);
			//ObjectOutputStream �� �Ϸ��� member��ü�� Serializable ���ָ�ȴ�
			Member m1 =new Member("fall","��ǳ��",10);
			oos.writeObject(m1);
			oos.flush();
			oos.close();
			//�ܺ� ������ �о
			InputStream is=new FileInputStream("D:/ai/java study//data/Member.dat");
			//����(�ӵ�)�� ��� ���Ѽ�
			BufferedInputStream bis =new BufferedInputStream(is);
			//��ũ�� ��ü�� ����
			ObjectInputStream ois= new ObjectInputStream(bis);
			//�о�ͼ�
			Member iM=(Member)ois.readObject();
			System.out.println(iM);
			
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
class Member implements Serializable{
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