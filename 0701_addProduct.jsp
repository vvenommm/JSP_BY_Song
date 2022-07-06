<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="/js/validation.js"></script>
<script type="text/javascript">
function backToList(){
// 	javascript:lacation.href='products.jsp'
	lacation.href='products.jsp'
}
</script>
<title>Title</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp" />
	
	<div class = "jumbotron">
	<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	
	<!-- 	--------------------------------상품등록시작-------------------------------- -->
	<!-- 		내용 책203쪽-->
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
		</div>
		<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="pName" /></label>
				<div class="col-sm-3">
					<input type="text" id="pName" name="pName" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-3">
					<input type="text" id="description" name="description" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="manufacturer" /></label>
				<div class="col-sm-3">
					<input type="text" id="manufacturer" name="manufacturer" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitInStock" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-5">
					<input type="radio" id="New" name="condition" value="New" /> <fmt:message key="condition_New" />
					<input type="radio" id="Old" name="condition" value="Old" /> <fmt:message key="condition_Old" />
					<input type="radio" id="Refurbished" name="condition" value="Refurbished" /> <fmt:message key="condition_Refurbished" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productImage" /></label>
				<div class="col-sm-5">
					<input type="file" id="productImage" name="productImage" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-privary" value="<fmt:message key="button" />" onclick="CheckAddProduct()" />
					<button type="button" class="btn btn-privary" onclick="backToList()"><fmt:message key="list" /></button>
				</div>
			</div>
			
		</form>
	</div>
	<!-- 	--------------------------------상품등록끄읕-------------------------------- -->
	
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>
