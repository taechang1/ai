package javaBasic3.ch06.seco07;

public class ShopService {
	private static ShopService shopService= new ShopService();
private ShopService() {
	// »ý¼ºÀÚ
}
public static ShopService getInstance() {
	return shopService;
}
}
