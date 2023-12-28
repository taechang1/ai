package javaApp5.ch18.sec01;

import java.io.*;


public class DataInputStreamEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			OutputStream os=new FileOutputStream("D:\\ai\\java study\\data\\p.db");
			DataOutputStream dos =new DataOutputStream(os);
			
			dos.writeUTF("홍길동");//한글을 저장하려고 클릭 3번째 
			dos.writeDouble(95.5);
			dos.writeInt(1);
			
			dos.writeUTF("김자바");
			dos.writeDouble(90.3);
			dos.writeInt(2);
			
			dos.flush();
			dos.close();
			
			InputStream is =new FileInputStream("D:\\ai\\java study\\data\\p.db");
			BufferedInputStream bis=new BufferedInputStream(is);
			DataInputStream dis =new DataInputStream(bis);
			
			String name=dis.readUTF();
			double score=dis.readDouble();
			int no= dis.readInt();
			System.out.print(name+" "+score+" "+no);
			name=dis.readUTF();
			score=dis.readDouble();
			no=dis.readInt();
			System.out.println(name+" "+score+" "+no);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
