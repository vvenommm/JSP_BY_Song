<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.dto.Product"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
</head>
<body>

	<%
		//from product.jsp
		//to post 방식으로 addCart.jsp?id=P1234
		String id = request.getParameter("id");
	
		out.print("id : " + id);
		//trim() 공백제거
		if(id == null || id.trim().equals("")){
			response.sendRedirect("products.jsp");
			return;
		}
		
		//기본키인 P1234 코드의 상품을 찾아보자
		//select * from ProductRepository where id='P1234'
		//싱글톤 패턴으로 객체를 1회 생성
		ProductRepository dao = ProductRepository.getInstance();
		
		Product product = dao.getProductById(id);
		
		//상품 결과 없다면
		if(product == null){
			//상품 없음인 예외 처리 페이지로 이동
			response.sendRedirect("exceptionNoProductId.jsp");
		}else{
			out.print("product : " + product.toString());
		}
		
		//장바구니(세션) => 세션명 : cartlist
		ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
		
		//장바구니가 없다면 생성
		if(list == null){
			//list는 null이므로 여기서 리스트 생성
			list = new ArrayList<Product>();
			//cartlist로 생성
			session.setAttribute("cartlist", list);
		}
		
		//장바구니가 있다면 다음을 실행
		int cnt = 0;
		
		/*
			1) 장바구니에 P1234 상품이 이미 들어있는 경우
				private int Quantity; //상품을 장바구니
				qunatity를 1 증가
			2) 장바구니에 P1234 상품이 없는 경우
				장바구니에 상품을 넣어주고 quantity를 1로 처리
		*/
		
		Product goodsQnt = new Product();
		
		for(int i = 0; i < list.size(); i++){
			goodsQnt = list.get(i);
			if(goodsQnt.getProductId().equals(id)){
				cnt++;
				goodsQnt.setQuantity(goodsQnt.getQuantity()+1);
			}
		}
		
		//장바구니에 해당 상품이 없으면
		if(cnt == 0){
			product.setQuantity(1);
			
			//최종 목표 : 장바구니(list)에 상품을 추가
			list.add(product);
		}
		
		//장바구니 확인
		for(Product pd : list){
			out.print("pd : " + pd.toString() + "<br /><hr />");
		}

		//response.sendRedirect("product.jsp?id=" + id);
	
	%>
	
</body>
</html>
