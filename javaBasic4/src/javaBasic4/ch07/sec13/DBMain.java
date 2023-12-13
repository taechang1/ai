package javaBasic4.ch07.sec13;

public class DBMain {

	public static void main(String[] args) {
		Connect myConnect=new Connect();
		// 오라클
		myConnect.db=new Oracle();
		myConnect.dbRun();
		//mySQL
		myConnect.db=new MySQL();
		myConnect.dbRun();
		//몽고

	}

}
class Connect{
	//필드 부모 타입 필드 선언
	DB db;
	public void dbRun() {
		db.runDb();
		
	}
}
