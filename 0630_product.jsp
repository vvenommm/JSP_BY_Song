<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="kr.or.ddit.dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%
	//ProductRepository productDAO = new ProductRepository();
	ProductRepository productDAO = ProductRepository.getInstance();
%>
<%-- <jsp:useBean id="productDAO" class="kr.or.ddit.dao.ProductRepository" scope="session" /> --%>
<jsp:useBean id="product" class="kr.or.ddit.dto.Product" scope="session" />
<!DOCTYPE html>
<html>
<head>
<title>상품 상세 정보</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<%
		String id = request.getParameter("id"); //P1234
		product = productDAO.getProductById(id); //P1234
	%>
	
<!-- 	include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
<!-- 	==================== 상품 상세 시작 ========================= -->
	<div class="jumbotron">
<!-- 		container : 이 안에 내용 -->
		<div class="container">
<!-- 		1건의 상품. 1행 -->
			<div class="row">
				<!-- 이미지 div -->
				<div class="col-md-5">
					<img src="/images/<%=product.getFilename() %>" alt="<%=product.getpName() %>" title="<%=product.getpName() %>" style="width:100%;" />
				</div>
<!-- 				6 크기의 1열 -->
				<div class="col-md-6">
					<h3><%=product.getpName() %></h3>
					<p><%=product.getDescription() %></p>
					<p>
						<b>상품 코드 : </b>
						<span class="badge badge-danger">
							<%=product.getProductId() %>
						</span>
					</p>
					<p><b>제조사 : </b><%=product.getManufacturer() %></p>
					<p><b>분류 : </b><%=product.getCategory() %></p>
					<p><b>남은 수량 : </b><%=product.getUnitsInStock() %></p>
					<h4><%=product.getUnitPrice() %>원</h4>
					<p>
						<form name="addForm" action="addCart.jsp?id=<%=product.getProductId() %>" method="post">
							<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
							<a href="cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
							<a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
						</form>
					</p>
				</div>
			</div>
		</div>
	</div>
<!-- 	==================== 상품 상세 끄읕 ========================= -->
	<jsp:include page="footer.jsp" />

</body>
</html>
