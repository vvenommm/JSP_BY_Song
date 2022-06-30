<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form01.jsp</title>
</head>
<body>

	<form action="form04_process.jsp" name="member" method="post">
		
		<p>비밀번호 : <input type="password" name="pass" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>연락처 : 
			<input type="text" maxlength="4" size="4" name="ph1" /> - 
			<input type="text" maxlength="4" size="4" name="ph2" /> - 
			<input type="text" maxlength="4" size="4" name="ph3" />
		</p>
		<p>성별 : 
			여<input type="radio" name="gender" value="여" checked/>
			남<input type="radio" name="gender" value="남"/>
		</p>
		<p>
			취미 : 
			독서 <input type="checkbox" name="hobby1" value="독서" checked/>
			운동 <input type="checkbox" name="hobby1" value="독서" />
			영화 <input type="checkbox" name="hobby1" value="독서" />
		</p>
		<p>
			<textarea rows="5" cols="10">
			</textarea>
		</p>
		<p>
			<input type="submit" name="sumit" value="가입하기" />
			<input type="reset" name="reset" value="다시쓰기" />
		</p>
	</form>
</body>
</html>
