package builderStudent;

public class Student {
	
	private String name;
	private int grade;
	private String major;
	
	private Student() {}
	
	public static class Builder {
		
		private String name;
		private int grade;
		private String major;
		
		public String setName(String name) {
			this.name = name;
			return name;
		}
		
		public int setGrade(int grade) {
			this.grade = grade;
			return grade;
		}
		
		public String setMajor(String major) {
			this.major = major;
			return major;
		}
		
		public Student build() {
			Student student = new Student();
			student.name = name;
			student.grade = grade;
			student.major = major;
			return student;
		}
		
	}
	
	
} // end of class
