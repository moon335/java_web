package ch02;

public class WashingMachine implements IElectronic220v{

	@Override
	public void connect() {
		System.out.println("세탁기 연결 220v");
	}
	
} // end of class
