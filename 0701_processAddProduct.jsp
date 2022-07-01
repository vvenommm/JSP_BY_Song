<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page import="kr.or.ddit.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String productId	= request.getParameter("productId");
	String pName        = request.getParameter("pName");
	String unitPrice    = request.getParameter("unitPrice");
	String description  = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category     = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition    = request.getParameter("condition");
	
	Integer price;
	//가격이 비어있다면
	if(unitPrice.isEmpty()){
		price = 0;
	}else{
		//비어있지 않다면
		price = Integer.valueOf(unitPrice); // -> uniPrice는 문자열이기 때문에 형변환 필요
	}
	
	long stock;
	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.valueOf(unitsInStock);
	}
	
	//Product(dto) 객체 생성
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setpName(pName);
	newProduct.setUnitPrice(price); //Integer로 형변환 됨
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock); //long으로 형변환 됨
	newProduct.setCondition(condition);
	
	//싱글톤 객체 생성
	ProductRepository dao = ProductRepository.getInstance();
	
	//새로운 상품 등록
	dao.addProduct(newProduct);
	
	//목록으로 이동
	response.sendRedirect("products.jsp");
%>
