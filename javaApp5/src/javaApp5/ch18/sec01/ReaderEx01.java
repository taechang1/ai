package javaApp5.ch18.sec01;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ReaderEx01 {

	public static void main(String[] args) {
		// 입력 스트림
		try {
			InputStream is=new FileInputStream("D:\\ai\\java study\\data\\text2.txt\\다운로드.png");
			OutputStream os =new FileOutputStream("D:\\ai\\java study\\data\\text2.txt\\다운로드_copy.png");
			byte[]bArr=new byte[100];//100바이트의 배열이 만들어짐
			byte[]WArr=new byte[100];
			while(true) {
				int data=is.read(bArr);//1byte 읽는다
				if(data==-1)break;   //-1은 데이터 끝이라는 의미
				os.write(data);
				System.out.println(data);
			}
			os.flush();
			os.close();
			is.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
