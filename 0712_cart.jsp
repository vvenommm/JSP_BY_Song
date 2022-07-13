<%@page import="java.math.BigDecimal"%>
<%@page import="kr.or.ddit.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
	<%
		//세션의 고유 아이디(장바구니 번호)
		String cartId = session.getId();
	%>
<title>장바구니</title>
</head>
<body>
<!-- 	include 액션 태그 -->
	<jsp:include page="menu.jsp" />

	<div class = "jumbotron">
<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>	
	
<!-- 	==================== 장바구니 상세 시작 ========================= -->
	<div class="container">
<!-- 		1건의 상품. 1행 -->
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left">
						<a href="deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a>
					</td>
					<td align="right">
						<a href="#" class="btn btn-success">주문하기</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
<!-- 	장바구니 출력 시작 -->
<!-- 	padding-top : 영역의 위쪽 여백 50px -->
	<div style="padding-top : 50px;">
		<table class="table table-hover">
			<tr>
				<th>상품</th><th>가격</th><th>수량</th><th>소계</th><ht>비고</ht>
			</tr>
			<%
				//금액 누적하는 변수
				double sum = 0;
				//addCart.jsp의 session.setAttribute("cartlist", list);
				ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
				
				for(Product product : cartlist){
					//금액 = 가격*수량
					double total = product.getUnitPrice() * product.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td><%=product.getProductId() %> - <%=product.getpName() %></td>
				<td><%=product.getUnitPrice()%>></td>
				<td><%=product.getQuantity() %></td>
				<td><%=total %></td>
				<td>
					<a href="removeCart.jsp?id=<%=product.getProductId() %>" class="badge badge-danger">삭제</a>
				</td>
			</tr>
			<%
				}
				
				//double 지수형태 알파벳 숫자를 원래 숫자로 바꿈
				BigDecimal big = new BigDecimal(sum);
			%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=big %></th>
				<th></th>
			</tr>
		</table>
		<a href="products.jsp" class="btn btn-secondary">&laquo;쇼핑 계속하기</a>
	</div>
	
<!-- 	장바구니 출력 끄읕 -->
	
<!-- 	==================== 장바구니 상세 끄읕 ========================= -->
	<jsp:include page="footer.jsp" />
</body>
</html>
