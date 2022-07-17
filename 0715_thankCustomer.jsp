<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>Thank you~</title>
</head>
<body>
	<%
	String Shipping_name = "";
	String Shipping_zipCode = "";
	String Shipping_country = "";
	String Shipping_addressName = "";
	String Shipping_shippingDate = "";
	String Shipping_cartId = "";

	Cookie[] cookies = request.getCookies();
	
	//쿠키의 개수만큼 반복
	for(int i = 0; i < cookies.length; i++){
		 Cookie thisCookie = cookies[i];
// 		 out.print(thisCookie.getName() + "<br />");
		 
		 //쿠키 이름 가져옴
// 		 out.print(thisCookie.getName() + "<br />");
		 
		 //쿠키 값 가져옴
// 		 out.print(URLDecoder.decode(thisCookie.getValue(), "UTF-8") + "<br />");
		 
		 if(thisCookie.getName().equals("Shipping_name")){
			 Shipping_name = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		 }
		 if(thisCookie.getName().equals("Shipping_zipCode")){
			 Shipping_zipCode = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		 }
		 if(thisCookie.getName().equals("Shipping_country")){
			 Shipping_country = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		 }
		 if(thisCookie.getName().equals("Shipping_shippingDate")){
			 Shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		 }
		 if(thisCookie.getName().equals("Shipping_addressName")){
			 Shipping_addressName = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		 }
		 if(thisCookie.getName().equals("Shipping_cartId")){
			 Shipping_cartId = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		 }
	}
	%>
	
	
<!-- 	include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<div class = "jumbotron">
<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
<!-- 	--------------------------------주문 완료 내용 시작-------------------------------- -->

	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 캄사뤼~</h2>
		<p>주문은 <%=Shipping_shippingDate %>에 배송 완료</p>
		<p>주문 번호 : <%=Shipping_cartId %></p>
	</div>
	<div class="container">
		<p><a href="products.jsp" class="btn btn-secondary">%laquo;상품목록</a>
	</div>

<!-- 	--------------------------------주문 완료 내용 끄읕-------------------------------- -->

	<jsp:include page="footer.jsp" />
</body>
</html>

<%
	session.invalidate();

	//쿠키의 개수만큼 반복
	for(int i = 0; i < cookies.length; i++){
		 Cookie thisCookie = cookies[i];
//		 out.print(thisCookie.getName() + "<br />");
		 
		 //쿠키 이름 가져옴
//		 out.print(thisCookie.getName() + "<br />");
		 
		 //쿠키 값 가져옴
//		 out.print(URLDecoder.decode(thisCookie.getValue(), "UTF-8") + "<br />");
		 
		 if(thisCookie.getName().equals("Shipping_name")){
			 thisCookie.setMaxAge(0);
		 }
		 if(thisCookie.getName().equals("Shipping_zipCode")){
			 thisCookie.setMaxAge(0);
		 }
		 if(thisCookie.getName().equals("Shipping_country")){
			 thisCookie.setMaxAge(0);
		 }
		 if(thisCookie.getName().equals("Shipping_shippingDate")){
			 thisCookie.setMaxAge(0);
		 }
		 if(thisCookie.getName().equals("Shipping_addressName")){
			 thisCookie.setMaxAge(0);
		 }
		 if(thisCookie.getName().equals("Shipping_cartId")){
			 thisCookie.setMaxAge(0);
		 }
		 
		 response.addCookie(thisCookie);
	}

%>
