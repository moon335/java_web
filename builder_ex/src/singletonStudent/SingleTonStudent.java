package singletonStudent;

public class SingleTonStudent {
	
	private String name;
	private int grade;
	private String major;
	private static SingleTonStudent student;
	
	private SingleTonStudent() {}
	
	public static SingleTonStudent getSingleTonStudent() {
		if(student == null) {
			student = new SingleTonStudent();
		}
		return student;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}
	
} // end of class
