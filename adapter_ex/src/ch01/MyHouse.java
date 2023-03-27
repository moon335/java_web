package ch01;

public class MyHouse {

	public static void main(String[] args) {
		
		AirConditioner airConditioner = new AirConditioner();
		Cleaner cleaner = new Cleaner();
		HairDryer hairDryer = new HairDryer();
		Nintendo nintendo = new Nintendo();
		
		// 다형성 !!!
		
		connect(cleaner);
		connect(airConditioner);
		
		// 철물점에서 어댑터 준비 110 -> 220
		TencoAdapter adapterHairDryer = new TencoAdapter(hairDryer);
		connect(adapterHairDryer);
		
		// 닌텐도 연결
		TencoAdapter adapterNintendo = new TencoAdapter(nintendo);
		connect(adapterNintendo);
		
	} // end of main
	
	// MyHouse static
	// 전기 콘센트
	public static void connect(IElectronic220v electronic220v) {
		electronic220v.connect();
	}
	
	
} // end of class
