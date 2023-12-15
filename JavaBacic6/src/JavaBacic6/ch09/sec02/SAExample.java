package JavaBacic6.ch09.sec02;

public class SAExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AA a1 =new AA();
		System.out.println(a1.aa);
		System.out.println(AA.BB.bb);
		//BB 클래스 new 해라
		AA.BB aabb= new AA.BB();
		System.out.println(aabb.ibb);
		aabb.bbM();
		aabb.ibbm();

	}

}
class AA{
	int aa=20;
	void aaM() {
		
	}
	static int sa=10;
	static void saM() {
}

  
   static class BB{
	   static int bb=20;
		static void sbbM() {
			
				
			}
		int ibb=30;
		void ibbm() {
			ibb=ibb+40;
			ibbm();
	}
	 
	   void bbM() {
		   //aa=aa+20;
		   //aaM();
		   
		   AA.sa=100;
		   AA.saM();
	   }
   }
   }