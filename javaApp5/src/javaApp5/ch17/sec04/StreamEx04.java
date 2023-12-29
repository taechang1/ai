package javaApp5.ch17.sec04;

import java.util.*;

public class StreamEx04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		List<Student>sList=new ArrayList<Student>();
		sList.add(new Student("홍길동",30));
		sList.add(new Student("신용권",10));
		sList.add(new Student("유미선",20));
		
		sList.stream()
		     .sorted()
		     .forEach(p->System.out.println(p.getName()+" "+p.getScore()));

	}

}
class Student implements Comparable<Student>{
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
	@Override
	public int compareTo(Student o) {
		Integer s=Integer.valueOf(score);
		Integer os=Integer.valueOf(o.getScore());
		
		return s.compareTo(os) ;
	}
	
}
