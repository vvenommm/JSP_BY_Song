<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation04.jsp</title>
<script type="text/javascript">
	//핸들러 함수
	function checkForm(){
		//숫자인지? "1admin".substr(0,1) => 1
		if(!isNaN(document.frm.name.value.substr(0,1))){
			//숫자라면
			alert("이름은 숫자로 시작할 수 없습니다.");
			document.frm.name.select();
			//return false가 없다.
			//http://localhost/ch08/validation04.jsp?name=1admin
			return;
		}
	}
</script>
</head>
<body>
	<!-- validation04.jsp?name=후후리 -->
	<form name="frm"> <!-- 액션이 없기 때문에 현재 페이지로 돌아옴 -->
		<p>이름 : <input type="text" name="name" /></p>
		<p><input type="submit" value="전송" onclick="checkForm()"/></p>
	</form>
</body>
</html>
