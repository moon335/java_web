package ch02;

public class Television implements IElectronic220v{

	@Override
	public void connect() {
		System.out.println("텔레비전 연결 220v");
	}
	
} // end of class
