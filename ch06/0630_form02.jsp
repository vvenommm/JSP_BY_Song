<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form01.jsp</title>
</head>
<body>

	<form action="#" name="member" method="post">
		
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
			<select name = "food">
				<optgroup label="분식">
					<option value="ramyeon">라면</option>
					<option value="topokki">떡볶이</option>
				</optgroup>
				<optgroup label="안주">
					<option value="odolbone">오돌뼈</option>
					<option value="odaengtang">오뎅탕</option>
				</optgroup>
				<optgroup label="찌개">
					<option value="kimchijjigae">김치찌개</option>
					<option value="djjjigae">된장찌개</option>
				</optgroup>
			</select>
		</p>
		<p>
			<input type="submit" name="sumit" value="가입하기" />
			<input type="reset" name="reset" value="다시쓰기" />
		</p>
	</form>
</body>
</html>
