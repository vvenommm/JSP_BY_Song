<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation05.jsp</title>
<script type="text/javascript">
	function checkMember(){
		//아이디는 문자로 시작
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		//이름은 한글만 입력. 웃음으로 시작하여 돈으로 끝나자
		var regExpName = /^[가-힣]*$/;
		//비밀번호는 숫자만 입력
		var regExpPass = /^[0-9]*$/;
		//연락처 형식 준수(010-111-2222, 010-1111-2222)
		//{3} : 딱 3회, {3, 4} : 3이상 4이하
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		//이메일 형식 준수(02test-_\.02test@naver-_\..com)
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		let form = document.Member;
		
		var id = form.id.value;
		var name = form.name.value;
		var pass = form.pass.value;
		var phone = form.ph1.value + "-" + form.ph2.value + "-" + form.ph3.value;
		var email = form.email.value;
		
		//아이디는 문자로 시작
		if(!regExpId.test(id)){
			alert("아이디는 문자만 가넝");
			form.id.select();
			return;
		}
		
		//비번은 숫자만
		if(!regExpPass.test(pass)){
			alert("비번은 숫자만 가넝");
			return;
		}
		
		//이름 형식 준수
		if(!regExpName.test(name)){
			alert("이름은 한글만 가넝");
			return;
		}
		
		//연락처 형식 준수
		if(!regExpPhone.test(phone)){
			alert("연락처 형식에 맞게");
			return;
		}
		
		//이메일 형식 준수
		if(!regExpEmail.test(email)){
			alert("이메일은 형식에 맞게");
			return;
		}
		
		//유효성 검사 통과
		form.submit();
	}
</script>
</head>
<body>
	<h3>회원가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="passward" name="pass" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>연락처 : 
			<select name = "ph1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			<input type="text" maxlength="4" size="4" name="ph2" /> - 
			<input type="text" maxlength="4" size="4" name="ph3" />
		</p>
		<p>이메일 : <input type="text"' name="email" /></p>
		<p><input type="button" value="가입하기" onclick="checkMember()" /></p>
	</form>
</body>
</html>
