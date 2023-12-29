package javaApp5.ch18.sec03;

import java.io.*;

public class FileEx01 {

	public static void main(String[] args) throws Exception {
		// 813\
		File dir =new File("D:/ai/java study//data/abc/def");
		File file1=new File("D:/ai/java study//data/file1.txt");
		File file2=new File("D:/ai/java study//data/file1.txt");
		File file3=new File("D:/ai/java study//data/file1.txt");
		
		if(dir.exists()==false) {dir.mkdirs();}//해당경로에 없는 폴더를 모두 만들어준다
		if(file1.exists()==false) {file1.createNewFile();};
		if(file2.exists()==false) {file1.createNewFile();};
		if(file3.exists()==false) {file1.createNewFile();};

	}

}
