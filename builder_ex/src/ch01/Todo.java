package ch01;

public class Todo {
	
	private String content;
	private int complete; // 1 완료, 0 미완료
	
	// 1. 기본 생성자 재정의
	private Todo() {}
	
	public static class MyBuilder {
		
		private String content;
		private int complete;
		
		public MyBuilder setContent(String content) {
			this.content = content;
			return this;
		}
		
		public MyBuilder setComplete(int complete) {
			this.complete = complete;
			return this;
		}
		
		// 핵심 !!!
		public Todo build() {
			Todo todo = new Todo();
			// Todo 변수 content = Builder 변수 content
			todo.content = content;
			todo.complete = complete;
			return todo;
		}
	}
	
	
} // end of class
