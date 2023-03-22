package ch01;

public class MainTest2 {

	public static void main(String[] args) {
		
		// 기본 데이터 타입에서 문자열 데이터 타입으로 변환
		System.out.println(10 + "");
		// 문자열 데이터 타입에서 기본 데이터 타입으로 변환하는 방법을 알아야 한다.
		// 래퍼클래스란 개념을 알고 있으면 된다.
		String str = "127";
		String str2 = "10.5";
		String str3 = "true";
		
		byte b = Byte.parseByte(str); // -128 ~ 127
		System.out.println("b: " + b);
		
		int i = Integer.parseInt(str);
		System.out.println("i: " + i);
		
		boolean bool = Boolean.parseBoolean(str3);
		System.out.println(!bool);
		
		float f = Float.parseFloat(str2);
		System.out.println(f);
		
		double d = Double.parseDouble(str2);
		System.out.println(d);
		
	} // end of main

} // end of class
