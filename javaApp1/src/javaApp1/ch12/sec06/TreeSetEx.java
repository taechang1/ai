package javaApp1.ch12.sec06;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.TreeSet;

public class TreeSetEx {

	public static void main(String[] args) {
		// 666
		TreeSet<Integer> t1=new TreeSet<Integer>();
	
		t1.add(87);
		t1.add(98);
		t1.add(75);
		t1.add(95);
		t1.add(80);
		t1.add(80);
		System.out.println(t1.size());//노드의 갯수는5
		Iterator<Integer> it =t1.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
	}
     for (Integer t:t1) {
    	 System.out.println(t);
     }
     //가장낮은 점수는?
     System.out.println(t1.first());
     //가장 높은 점수는?
     System.out.println(t1.last());
     //95점 아래 점수는?
     System.out.println(t1.lower(95));
     //95점 위에 점수는?
     System.out.println(t1.higher(95));
     //95점 이거나 바로 아래 점수는?
      System.out.println(t1.floor(95));
     //95점 이거나 바로 위의 점수는?
      System.out.println(t1.ceiling(95));
      //내림차순 정렬
      NavigableSet<Integer> ds= t1.descendingSet();
      for(Integer d:ds) {
    	  System.out.println(d+"~");
      }
      //80~90사이
      SortedSet<Integer> s8090= t1.subSet(80,false,90,false);
      for(Integer s: s8090) {
    	  System.out.println(s+"~~");
    	  
      }
      //트리에 노드가 87이 있나요?
      System.out.println(t1.contains(100));
      t1.remove(87);
}
	}
