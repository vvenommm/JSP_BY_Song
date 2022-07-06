<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation04.jsp</title>
<script type="text/javascript">
	//핸들러 함수
	function checkForm(){
		//이름은 숫자로 시작할 수 없습니다.
		let str = document.frm.name.value; //1개똥이
		//정규표현식 생성(문자형식) , [a-z] : a~z사이의 문자
		let regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		//문자형식이 아니다. 1개똥이 -> true
		if(!regExp.test(str)){
			//test()메소드 : T / F
			alert("이름은 숫자로 시작 X");
			return; //함수 빠져나옴. 정지
		}
	}
</script>
</head>
<body>
	<!-- validation04.jsp?name=후후리 -->
	<form name="frm"> <!-- 액션이 없기 때문에 현재 페이지로 돌아옴 -->
		<p>이름 : <input type="text" name="name" /></p>
		<p><input type="button" value="전송" onclick="checkForm()"/></p>
	</form>
</body>
</html>
