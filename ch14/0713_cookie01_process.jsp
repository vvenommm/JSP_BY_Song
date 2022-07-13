<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>cookie01_process</title>
</head>
<body>

	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pass");
		
		//아이디가 admin, 비번이 1234 -> Cookie 객체 생성.
		if(user_id.equals("admin") && user_pw.equals("1234")){
			//name = user_id, value=admin / name = user_pw, value=1234
			Cookie cookie_id = new Cookie("user_id", user_id);
			Cookie cookie_pw = new Cookie("user_pw", user_pw);
			
			//response 내장 객체를 통해 쿠키를 리턴
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.print("쿠키 설정 성공! <br />");
			out.print(user_id + "");
		}else{
			out.print("쿠키 설정 실패!");
		}
	%>
	
</body>
</html>
