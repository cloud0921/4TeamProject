package com.smhrd.model;

public class MemberVO {
	//한명에 대한 정보를 저장할 수 있는 자료형
	private String id;
	private String pwd;
	private String name;
	private String idnum;
	private String phone;
	private String email;	
	private String admin;
	
	public MemberVO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	//모든 데이터 초기화하는 생성자 만들기
	public MemberVO(String id, String pwd, String name,String idnum,String phone, String email, String admin) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.idnum=idnum;
		this.phone = phone;
		this.email = email;
		this.admin = admin;
	}

	//getter 메소드 만들기
	public String getId() {
		return id;
	}

	public String getPwd() {
		return pwd;
	}

	public String getName() {
		return name;
	}
	public String getidNum() {
		return idnum;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}

	public String getAdmin() {
		return admin;
	}
}
