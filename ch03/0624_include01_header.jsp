<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%!
	//선언문 -> 전역 변수
	int pageCount = 0;
	
	//전역 메소드, 리턴 타입은 없다
	void addCount(){
		//후위증감연산자
		pageCount++;
	}
%>
<%
	//스크리트릿
	//전역 메소드 호출 => 방문수 1 증가
	addCount();
%>
<p>이 사이트 방문은 <%=pageCount%>번째입니다.</p>
