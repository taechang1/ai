package javaApp5.ch17.sec07;

import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.SystemMenuBar;

import java.util.*;


public class StreamEx7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Student>totalList= new ArrayList<Student>();
		totalList.add(new Student("홍길동", "남", 92));
		totalList.add(new Student("김수연", "여", 87));
		totalList.add(new Student("김자바", "남", 92));
		totalList.add(new Student("오해영", "여", 93));
		
		//
		List<Student>maleList=
		totalList.stream()
		         .filter(t->t.getSex().equals("남"))
		         .collect(Collectors.toList());
		for(Student s : maleList) {
			System.out.println(s.getName());
		}
		

	}

}
class Student{
	private String name;
    private String sex;
    private Integer score;
	public Student(String name, String sex, Integer score) {
		super();
		this.name = name;
		this.sex = sex;
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
    
}