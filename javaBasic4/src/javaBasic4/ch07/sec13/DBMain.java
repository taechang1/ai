package javaBasic4.ch07.sec13;

public class DBMain {

	public static void main(String[] args) {
		Connect myConnect=new Connect();
		// ����Ŭ
		myConnect.db=new Oracle();
		myConnect.dbRun();
		//mySQL
		myConnect.db=new MySQL();
		myConnect.dbRun();
		//����

	}

}
class Connect{
	//�ʵ� �θ� Ÿ�� �ʵ� ����
	DB db;
	public void dbRun() {
		db.runDb();
		
	}
}
