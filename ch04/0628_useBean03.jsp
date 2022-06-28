<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="kr.or.ddit.dao.Person"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>uesBean03.jsp</title>
</head>
<body>

	<%
		//스크립트릿
		List<Person> personList = new ArrayList<Person>();
	%>
	
<!-- 	scope가 생략 -->
	<jsp:useBean id="person" class="kr.or.ddit.dao.Person"/>
	
	<p>아이디 : <%=person.getId() %></p>
	<p>이르음 : <%=person.getName() %></p>
	
	<%
		personList.add(person); //기본 필드 값인채로 저장
		
		person = new Person();
		person.setId(20182005);
		person.setName("개똥이");
		personList.add(person);
		
		//향상 for문
		for(Person row : personList){
			out.print("<p>아이디 : " + row.getId() + "</p>");
			out.print("<p>이르음 : " + row.getName() + "</p>");
		}
	%>
		
</body>
</html>
