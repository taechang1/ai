package JavaBacic6.ch09.sec07;

public class HomeExample {

	public static void main(String[] args) {
		Home home= new Home();
		
		home.use1();
		
		home.use2();
		
		home.use3( new RemoteControl() {
			
			@Override
			public void turnOn() {
				 System.out.println("������ �մϴ�");
				
			}
			
			@Override
			public void turnOff() {
				 System.out.println("������ ���ϴ�");
				
			}
		}); 

	}

}
