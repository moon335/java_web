package ch02;

public class MainTest1 {

	public static void main(String[] args) {
		
		IMaxNumber maxInt = new IMaxNumber() {
			@Override
			public int getMax(int a, int b) {
				if(a < b) {
					return a;
				}
				return b;
			}
		};
		
		IMaxNumber lambdaMaxInt = (a, b) -> {return a > b ? a : b;};
		System.out.println(lambdaMaxInt.getMax(50, 100));
	} // end of main

} // end of class

class MaxNumber implements IMaxNumber{
	@Override
	public int getMax(int a, int b) {
		int max = a > b ? a : b;
		return max;
	}
} // end of class