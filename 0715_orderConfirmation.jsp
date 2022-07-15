<%@page import="java.math.BigDecimal"%>
<%@page import="kr.or.ddit.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>
<!-- 	include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<div class = "jumbotron">
<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
<!-- 	--------------------------------주문정보시작-------------------------------- -->
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
<!-- 		고객 정보 시작 -->
		<div class="row justify-content-between">
			<strong>배송 주소</strong><br />
			성명 : <%=Shipping_name %><br />
			우편번호 : <%=Shipping_zipCode %><br />
			주소 : <%=Shipping_addressName %><%=Shipping_country %>
		</div>
		<div class="col-4" align="right"></div>
		<p>
			<em>배송일 : <%=Shipping_shippingDate %></em>
		</p>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">도서</th>
					<th class="text-center">#</th>
					<th class="text-center">가격</th>
					<th class="text-center">소계</th>
				</tr>
				
				<%
					double sum = 0;
				
					ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
					
					for(int i = 0; i < cartList.size(); i++){
						Product product = cartList.get(i);
						double total = product.getUnitPrice() * product.getQuantity();
						BigDecimal big_total = new BigDecimal(total);
						sum = sum + total;
				%>
				<tr>
					<td class="text-center"><em><%=product.getpName() %></em></td>
					<td class="text-center"><%=product.getQuantity() %></td>
					<td class="text-center"><%=product.getUnitPrice() %></td>
					<td class="text-center"><%=total%>원</td>
				</tr>
				<%
					}
					
					BigDecimal big_sum = new BigDecimal(sum);
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right">총액 : </td>
					<td class="text-center text-danger"><strong><%=big_sum %>원</strong></td>
				</tr>
			</table>
		</div>
	</div>
		
	<div class="container col-8 alert alert-info">
		<a href="shippingInfo.jsp?cartId=<%=Shipping_cartId%>" class="btn btn-secondary" role="button">이전</a>
		<a href="thankCustomer.jsp" class="btn btn-success" role="button">주문완료</a>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>
