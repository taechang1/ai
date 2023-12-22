package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class BoardEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Board b1=new Board("홍길동","자바","어렵다");
		Board b2=new Board("이순신","파이션","쉽다");
		Board b3=new Board("홍길동","넌파이","아직 안배웠다");
		Board b4=new Board("홍길동","넌파이","아직 안배웠다");
		Board b5=new Board("이순신","판다스","아직 안배웠다");
		
		Set<Board>bSet=new HashSet<Board>();
		
		bSet.add(b1);
		bSet.add(b2);
		bSet.add(b3);
		bSet.add(b4);
		bSet.add(b5);
		
		System.out.println(bSet.size());
		
		Iterator<Board>it=bSet.iterator();
		
		while(it.hasNext()) {
			System.out.println(it.next().toString());
	}

}
	}
class Board{
	String name;
	String title;
	String cotent;
	public Board(String name, String title, String cotent) {
		super();
		this.name = name;
		this.title = title;
		this.cotent = cotent;
	}@Override
	public int hashCode() {
		Integer.valueOf(title);
		return name.hashCode()+title.hashCode();
	}@Override
	public boolean equals(Object obj) {
		if(obj instanceof Board) {
			Board b=(Board)obj;
			if(title.equals(b.title)&& name.equals(b.name))
			  return true;
			}
			return false;
	}@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name+" "+title+" "+cotent;
	}
	
}
	