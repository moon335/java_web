package ch01;

import ch01.Todo.MyBuilder;

public class MainTest1 {

	public static void main(String[] args) {
		
		// 패턴의 3가지 종류 : 생성 패턴, 행위 패턴, 구조 패턴
		
		Todo todo1 = new MyBuilder().setComplete(1).build();
//		Todo todo2 = new MyBuilder().setContent("잠자기"); <-- 오류 build()메소드를 해주지 않으면 리턴값이 Todo가 아니기 때문
		Todo todo = new MyBuilder().setComplete(0).setContent("청소하기").build();
		
		
	} // end of main

} // end of class
