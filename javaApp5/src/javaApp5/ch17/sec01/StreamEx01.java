package javaApp5.ch17.sec01;

import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class StreamEx01 {

	public static void main(String[] args) {
		// ��Ʈ�� �帣��
		//��Ʈ�� ���� �÷��� �Ǵ� �迭 �������� ��Ʈ�� �߰� �ܰ� (���� ���ǵ�) �������� ������Ʈ��
/*
		//1�ܰ� �÷��� �Ǵ� �迭
		List<Student>list=Arrays.asList(new Student("ȫ�浿",10),
				                        new Student("�ſ��",20),
				                        new Student("���̼�",30));
		//2�ܰ� �������� ��Ʈ��
		Stream<Student> studentStream=list.stream();
		
		//3�ܰ� ������ ������ ���� �߰��ܰ�(����,���ε�)
		//int applyAsInt(t value);
		IntStream scoreStream=studentStream.mapToInt(student->student.getScore() );
		//4�ܰ� ������ ����� ���ϱ� ������Ʈ��
	double avg=scoreStream.average().getAsDouble();
	
	System.out.println(avg);*/
		//1�ܰ� �÷��� �Ǵ� �迭
		List <Student>list= Arrays.asList(new Student("ȫ�浿",10),
				                           new Student("�ſ��",20),
				                           new Student("���̼�",30));
		double avg= 
				list.stream()
				    .mapToInt(student ->student.getScore() )
				    .average()
				    .getAsDouble();
		   System.out.println(avg);
	}

}
class Student{
	private String name;
	private int score;
	public Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public int getScore() {
		return score;
	}
}