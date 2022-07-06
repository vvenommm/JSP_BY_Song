<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation03.jsp</title>
<script type="text/javascript">
	function checkLogin(){
		let form = document.loginForm;
		if(form.id.value.length<4 || form.id.value.length > 12){
			alert("아이디는 4~12자 이내로 입력해주세요.");
			form.id.select(); //focus()
			return; false //생략됨
		}
		
		//비밀번호 : 4자 이상으로 입력
		//else if를 안쓴 이유? 모두 통과해야 하므로
		if(form.passwd.value.length < 4){
			alert("비밀번호는 4자 이상으로 입력해야 합니다.");
			form.passwd.select();	//커서를 위치함
			return;
		}
		
		//통과 됐다면
		form.submit(); //validation03_process.jsp를 요청
	}
</script>
</head>
<body>
	<!-- validation03_process.jsp?id=a001&passwd=java -->
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="pass" /></p>
		<p><input type="button" value="전송" onclick="checkLogin()"/></p>
	</form>
</body>
</html>
