package javaApp1.ch12.sec05;

import java.io.IOException;
import java.util.Properties;

public class PropertiesEx {

	public static void main(String[] args) throws IOException {
		// 663
		Properties properties=new Properties();
		properties.load(PropertiesEx.class.getResourceAsStream("database.properties"));
		properties.getProperty("driver");

	}

}