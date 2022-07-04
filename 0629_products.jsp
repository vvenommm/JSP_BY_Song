<%@page import="kr.or.ddit.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- 액션 태그 -->
<!-- scope 4총사 : page(영역), request, session, application -->
<!-- scope 객체 4총사 : pageContext(영역에 살고있는 객체), request, session, application -->

<%
	//ProductRepository productDAO = new ProductRepository(); //10번 줄과 같은 의미
	ProductRepository productDAO = ProductRepository.getInstance();
	
%>
<%-- <jsp:useBean id="productDAO" class="kr.or.ddit.dao.ProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<title>상품 목록</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="/css/bootstrap.min.css" />
</head>
<body>
<!-- 	include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
<!-- 	--------------------------------상품목록시작-------------------------------- -->
	<div class = "jumbotron">
<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>

	<%
		//스크립트릿
		//Product 객체 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져옴
		List<Product> listOfProducts = productDAO.getAllProducts();
	%>
		<div class="container">
<!-- 			행별 처리 -->
			<div class="row" align="center">
				<%
					for(Product product : listOfProducts){
				%>
<!-- 					열별 처리 -->
					<div class="col-md-4">
						<img src="/images/<%=product.getFilename() %>" style="width:100%;" alt="<%=product.getpName() %>" title="<%=product.getpName() %>"  />
						<h3><%=product.getpName() %></h3>
						<p><%=product.getDescription() %></p>
						<p><%=product.getUnitPrice() %>원</p>
						<p><a href="product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세 정보&raquo;</a></p>
					</div>						
				<%
					}
				%>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-privary" value="상품등록" onclick="javascript:location.href='addProduct.jsp'"/>
				</div>
			</div>
		</div>
<!-- 		상품목록 끝 -------------------------------------------------- -->
	
	<jsp:include page="footer.jsp" />
</body>
</html>
