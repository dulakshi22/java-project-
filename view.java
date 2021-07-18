package com.adm;

public class view {
	private String ITnumber;
 	private String  name;
 	private String  academic_year;
 	private String  subject;
 	private String  marks;
 	private String  grade;
 	
	public view(String iTnumber, String name, String academic_year, String subject, String marks, String grade) {

		ITnumber = iTnumber;
		this.name = name;
		this.academic_year = academic_year;
		this.subject = subject;
		this.marks = marks;
		this.grade = grade;
	}

	public String getITnumber() {
		return ITnumber;
	}

	public String getName() {
		return name;
	}

	public String getAcademic_year() {
		return academic_year;
	}

	public String getSubject() {
		return subject;
	}

	public String getMarks() {
		return marks;
	}

	public String getGrade() {
		return grade;
	}
 	
 	
 	
 	
 	
}
