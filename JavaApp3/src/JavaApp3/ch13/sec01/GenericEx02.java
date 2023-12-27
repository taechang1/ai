package JavaApp3.ch13.sec01;

public class GenericEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Course.registerCourse1(new Applicant<Person>(new Person() ) );
//		Course.registerCourse1(new Applicant<Worker>(new Worker() ) );
//		Course.registerCourse1(new Applicant<Student>(new Student() ) );
//		Course.registerCourse1(new Applicant<highStudent>(new highStudent() ) );
//		Course.registerCourse1(new Applicant<MiddleStudents>(new MiddleStudents() ) );
//		
//		//Course.registerCourse2(new Applicant<Person>(new Person() ) );
//		//Course.registerCourse2(new Applicant<Worker>(new Worker() ) );
//		Course.registerCourse2(new Applicant<Student>(new Student() ) );
//		//Course.registerCourse2(new Applicant<highStudent>(new highStudent() ) );
//		//Course.registerCourse2(new Applicant<MiddleStudents>(new MiddleStudents() ) );
//		
//		
//		Course.registerCourse3(new Applicant<Person>(new Person() ) );
//		Course.registerCourse3(new Applicant<Worker>(new Worker() ) );
//		//Course.registerCourse3(new Applicant<Student>(new Student() ) );
//		//Course.registerCourse3(new Applicant<highStudent>(new highStudent() ) );
//		//Course.registerCourse3(new Applicant<MiddleStudents>(new MiddleStudents() ) );
// 
	}

//}
//class Applicant<T> {
//	 public T kind;
//
//	public Applicant(T kind) {
//		this.kind = kind;
//	}
//	 
//}
//class Course{
//	public static void registerCourse1(Applicant<?>applicant) {
//		System.out.println(applicant.Kind.getClass().getSimpleName()+"이(가) Course1을 등록함");
//	}
//		
//	public static void registerCourse2(Applicant<?extends Student>applicnat) {
//		//<?extends Student>Student 객체의자신을 포함해서 자식만이용
//		System.out.println(applicant.Kind.getClass().getSimpleName()+"이(가) Course2을 등록함");
//	}
//		
//	public static void registerCourse3(Applicant<?super Worker>applicnat) {
//		//<?super Worker>Worker 객체의 상위 객체만 이용
//		System.out.println(applicant.Kind.getClass().getSimpleName()+"이(가) Course3을 등록함");
//	}
}
	