package ch02;

public class MyHouse {

	public static void main(String[] args) {
		
		Television television = new Television();
		PlayStation5 playStation5 = new PlayStation5();
		
		connect(television);
		
		TencoAdapter adapterPlayStation = new TencoAdapter(playStation5);
		connect(adapterPlayStation);
		
		
	} // end of main
	
	public static void connect(IElectronic220v electronic220v) {
		electronic220v.connect();
	}
	
} // end of class
