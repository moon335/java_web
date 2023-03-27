package ch02;

public class PlayStation5 implements IElectronic110v{

	@Override
	public void connect() {
		System.out.println("플스 연결 110v On");
	}
	
} // end of class
