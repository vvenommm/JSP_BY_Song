<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>exception_process.jsp</title>
</head>
<body>

	<%
		try{
			String num1 = request.getParameter("num1"); //"12"
			String num2 = request.getParameter("num2"); //"6"
			
			//문자를 숫자로 형변환
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a / b; //2
			
			out.print(num1 + " / " + num2 + " = " + c);
		}catch(NumberFormatException e){
			//오류 발생 시 tryCatch_error.jsp로 포워딩
			//request 객체와 response 객체를 전달함
			//tryCatch_error.jsp에서도 요청 파라미터 {"num1=12", "num2=0"}를 쓸 수 있음
			
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("tryCatch_error.jsp");
			dispatcher.forward(request, response);
		}
		
	%>
	
</body>
</html>
