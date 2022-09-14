package com.smhrd.model;

public class MemberVO {
	//한명에 대한 정보를 저장할 수 있는 자료형
	private String userid;
	private String pwd;
	private String name;
	private String email;
	private String phone;
	private int admin;
	
	public MemberVO(String id, String pw) {
		this.userid = id;
		this.pwd = pw;
	}
	
	//모든 데이터 초기화하는 생성자 만들기
	public MemberVO(String userid, String pwd, String name, String email, String phone, int admin) {
		this.userid = userid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.admin = admin;
	}

	//getter 메소드 만들기
	public String getId() {
		return userid;
	}

	public String getPwd() {
		return pwd;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public int getAdmin() {
		return admin;
	}
	@Override
	public String toString() {
		return this.name +"객체에 해당함";
	}
	//String.equals("문자열")
	//객체 비교하기 위한 equals() 오버라이딩 구현
}
