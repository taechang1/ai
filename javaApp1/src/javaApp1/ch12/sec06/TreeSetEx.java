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
		System.out.println(t1.size());//����� ������5
		Iterator<Integer> it =t1.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
	}
     for (Integer t:t1) {
    	 System.out.println(t);
     }
     //���峷�� ������?
     System.out.println(t1.first());
     //���� ���� ������?
     System.out.println(t1.last());
     //95�� �Ʒ� ������?
     System.out.println(t1.lower(95));
     //95�� ���� ������?
     System.out.println(t1.higher(95));
     //95�� �̰ų� �ٷ� �Ʒ� ������?
      System.out.println(t1.floor(95));
     //95�� �̰ų� �ٷ� ���� ������?
      System.out.println(t1.ceiling(95));
      //�������� ����
      NavigableSet<Integer> ds= t1.descendingSet();
      for(Integer d:ds) {
    	  System.out.println(d+"~");
      }
      //80~90����
      SortedSet<Integer> s8090= t1.subSet(80,false,90,false);
      for(Integer s: s8090) {
    	  System.out.println(s+"~~");
    	  
      }
      //Ʈ���� ��尡 87�� �ֳ���?
      System.out.println(t1.contains(100));
      t1.remove(87);
}
	}
