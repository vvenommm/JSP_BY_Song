<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class = "jumbotron">
<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">배송 정보</h1>
		</div>
	</div>
<!-- 	---------------------------- 배송 정보 시작 ---------------------------- -->
	<div class="container">
		<form action="processShippingInfo.jsp" class="form-horizontal" method="post">
			<label class="col-sm-2">장바구니 번호</label>
			<input type="text" name="cartId" value="<%=request.getParameter("cartId") %>" readonly="readonly" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-3">
					<input type="text" name="shippingDate" class="form-control"> (YYYY/MM/DD)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">국가명</label>
				<div class="col-sm-3">
					<input type="text" name="country" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input type="text" name="zipCode" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" name="addressName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="cart.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-secondary" role="button">이전</a>
					<input type="submit" class="btn btn-primary" value="등록" />
					<a href="checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
	<%
		
	%>
	
<!-- 	---------------------------- 배송 정보 끄읕 ---------------------------- -->

	<jsp:include page="footer.jsp" />
</body>
</html>
