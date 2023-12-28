package javaApp5.ch18.sec01;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class WriterEx01 {

	public static void main(String[] args) {
		try {
		     OutputStream os=new FileOutputStream("D:\\ai\\java study\\data\\text2.txt");
		     byte a=10;
		     byte b=20;
		     byte c=30;
		     
		     byte[]bArr= {100,127,-127};
		     os.write(a);
		     os.write(b);
		     os.write(c);
		     os.write(bArr);
		     os.flush();
		     os.close();
		     

	}catch (FileNotFoundException e) {
		
		e.printStackTrace();
	}catch (IOException e) {
		// TODO: handle exception
		e.printStackTrace();
	}

}
	}
