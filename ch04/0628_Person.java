package kr.or.ddit.dao;

import java.io.Serializable;

//자바빈 클래스 만들기(= DTO(data transfer object), VO(value object))
//직렬화 : 멤버 변수를 쭉~ 나열하려 처리
public class Person implements Serializable{
	
	//멤버변수 = 필드
	private int id = 20181004;
	private String name = "후후";
	
	//기본 생성자(생략 가능)
	public Person() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
