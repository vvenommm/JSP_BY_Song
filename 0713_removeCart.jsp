<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.dto.Product"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	//removeCart.jsp?id=P1234의 요청 파라미터를 받아서 변수에 저장
	String id = request.getParameter("id"); //P1234
	
	//만약 /removeCart.jsp 또는 removeCart.jsp?id-Z1234라면 products.jsp로 이동
	if(id == null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	//상품 저장소 클래스 => 싱글톤 객체 생성(메모리에 1회 생성, 공유해서 사용)
	ProductRepository dao = ProductRepository.getInstance();
	
	//상품 검색 메소드(select * from productrepository where id='Z1234')
	Product product = dao.getProductById(id);
	if(product == null){
		response.sendRedirect("exceptionNoProductId.jsp");
		return;
	}
			
	//세션의 장바구니 목록에서 P1234가 있는지 확인 후 만약에 있다면 장바구니에서 제외 처리
	//cartlist라는 세션명으로 생성 (session.setAttribute("cartlist", list);)
	ArrayList<Product> cartlist = (ArrayList<Product>)session.getAttribute("cartlist");

	Product goodsQnt = new Product(); //Object 생성
	 for(int i=0;i<cartlist.size();i++){
		goodsQnt = cartlist.get(i);
		//P1234.equals(id)
		if(goodsQnt.getProductId().equals(id)){
			cartlist.remove(goodsQnt);
// 			cartlist.remove(row); 실패
		}
	}
	
	response.sendRedirect("cart.jsp");
	
%>
