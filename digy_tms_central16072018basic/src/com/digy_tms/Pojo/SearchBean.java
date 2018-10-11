package com.digy_tms.Pojo;

public class SearchBean {

	private String[] Course_key=new String[10000];

private int[] Course_key1=new int[1000];

	public int[] getCourse_key1() {
	return Course_key1;
}
public void setCourse_key1(int[] course_key1) {
	Course_key1 = course_key1;
}
	private String Course_Id;
	private String Course_Name; 
	private String course_category;
	private String course_sub_category;
	private String status;
	

	public String[] getCourse_key() {
		return Course_key;
	}
	public void setCourse_key(String[] course_key) {
		Course_key = course_key;
	}
	public String getCourse_category() {
		return course_category;
	}
	public void setCourse_category(String course_category) {
		this.course_category = course_category;
	}
	public String getCourse_sub_category() {
		return course_sub_category;
	}
	public void setCourse_sub_category(String course_sub_category) {
		this.course_sub_category = course_sub_category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCourse_Id() {
		return Course_Id;
	}
	public void setCourse_Id(String course_Id) {
		Course_Id = course_Id;
	}
	public String getCourse_Name() {
		return Course_Name;
	}
	public void setCourse_Name(String course_Name) {
		Course_Name = course_Name;
	}
	
}
