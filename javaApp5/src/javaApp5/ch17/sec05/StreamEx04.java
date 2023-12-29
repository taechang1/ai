package javaApp5.ch17.sec05;

import java.util.*;

public class StreamEx04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		List<Student>sList=new ArrayList<Student>();
		sList.add(new Student("ȫ�浿",30));
		sList.add(new Student("�ſ��",10));
		sList.add(new Student("���̼�",20));
		
		sList.stream()
		     .sorted(new StudentCom()) 
		     .forEach(p->System.out.println(p.getName()+" "+p.getScore()));
		//����: �ݺ��ؼ� �Ѱ��� �����ͼ� ó���ϱ�
		

	}

}
class StudentCom implements Comparator<Student>{
	@Override
	public int compare(Student o1, Student o2) {
		
		Integer o1S=Integer.valueOf(o1.getScore());
		Integer o2S=Integer.valueOf(o2.getScore());
			
		
		return o1S.compareTo(o2S);
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

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	}
	

