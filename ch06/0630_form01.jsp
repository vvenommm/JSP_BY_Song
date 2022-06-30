<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form01.jsp</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="#" name="member" method="post">
		
		<p>아이디 : <input type="text" name="id" /><input type="button" value="아이디 중복 검사" /></p>
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
			운동 <input type="checkbox" name="hobby2" value="독서" />
			영화 <input type="checkbox" name="hobby3" value="독서" />
		</p>
		<p>
<!-- 			size 속성 : 해당 개수대로 미리 보여줌 -->
			도시 : 
			<select name="city" size="3">
				<option value="대전">대전</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
				<option value="충청">충청</option>
				<option value="전라">전라</option>
				<option value="경상">경상</option>
			</select>
		</p>
		<p>
			<input type="submit" name="sumit" value="가입하기" />
			<input type="reset" name="reset" value="다시쓰기" />
		</p>
	</form>
</body>
</html>
