<%@ page language="java" contentType="text/html; charset=UTF-8"%>
	<%
		//http://localhost/deleteCart.jsp?cartId=0E079034718304681034871290
		//요청 파라미터 cartId 받기
		String id = request.getParameter("cartId"); //0E079034718304681034871290 <= session.getId()
		
		//cartId가 없으면 cart.jsp로 이동
		if(id == null || id.trim().equals("")){
			response.sendRedirect("cart.jsp");
			return;
		}
		
		//장바구니 비우기
// 		session.removeAttribute("세션명"); // => 세션 한 건만 삭제
		session.invalidate(); //모든 세션 삭제
		
		//cart.jsp로 이동
		response.sendRedirect("cart.jsp");
	%>
