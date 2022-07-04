<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Title</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class = "jumbotron">
	<!-- 		container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	
	<!-- 	--------------------------------상품등록시작-------------------------------- -->
	<!-- 		내용 책203쪽-->
	<div class="container">
		<form action="processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 이름</label>
				<div class="col-sm-3">
					<input type="text" name="pName" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품 설명</label>
				<div class="col-sm-3">
					<input type="text" name="description" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">재고 상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New" /> 신규
					<input type="radio" name="condition" value="Old" /> 중고
					<input type="radio" name="condition" value="Refurbished" /> 재생
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="condition" class="form-control" />
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-privary" value="등록" />
					<button type="button" class="btn btn-privary" onclick="javascript:lacation.href='products.jsp'">목록보기</button>
				</div>
			</div>
			
		</form>
	</div>
	<!-- 	--------------------------------상품등록끄읕-------------------------------- -->
	
	<jsp:include page="footer.jsp" />
</body>
</html>
