package com.mycom.myapp;

import java.util.Date;

public class BoardVO {
	private int SubjectCode;

	private String Course;
	private String Professor;
	private String Classroom;
	private String ClassHour;
	private String LectureIntro;
	private int ClassCapacity;
	private int Credit;

	public int getSubjectCode() {
		return SubjectCode;
	}

	public void setSubjectCode(int subjectCode) {
		SubjectCode = subjectCode;
	}

	public String getCourse() {
		return Course;
	}

	public void setCourse(String course) {
		Course = course;
	}

	public String getProfessor() {
		return Professor;
	}

	public void setProfessor(String professor) {
		Professor = professor;
	}

	public String getClassroom() {
		return Classroom;
	}

	public void setClassroom(String classroom) {
		Classroom = classroom;
	}

	public String getClassHour() {
		return ClassHour;
	}

	public void setClassHour(String classHour) {
		ClassHour = classHour;
	}

	public String getLectureIntro() {
		return LectureIntro;
	}

	public void setLectureIntro(String lectureIntro) {
		LectureIntro = lectureIntro;
	}

	public int getClassCapacity() {
		return ClassCapacity;
	}

	public void setClassCapacity(int classCapacity) {
		ClassCapacity = classCapacity;
	}

	public int getCredit() {
		return Credit;
	}

	public void setCredit(int credit) {
		Credit = credit;
	}
}

