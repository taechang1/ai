package javaBasic3.ch06.seco12;

public class Computer {
	int sum(int ... values) {
		int SumVar=0;
		for(int i=0;i<values.length;i++) {
			SumVar+= values[i];
		}
		return SumVar;
	}
double doublesum;
double avg(double ... values) {
	double doubleSum=0;
	for(int i=0;i<values.length;i++) {
		doubleSum += values[i];
	}
	return doubleSum/ values.length;
}
}

