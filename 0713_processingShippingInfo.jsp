<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
	<%
		request.setCharacterEncoding("utf-8");
		
		//요청 파라미터 정보를 쿠키에 넣기
		Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "UTF-8"));
		Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "UTF-8"));
		Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "UTF-8"));
		Cookie country = new Cookie("Shipping_country", URLEncoder.encode(request.getParameter("country"), "UTF-8"));
		Cookie zipCode = new Cookie("Shipping_zipCode", URLEncoder.encode(request.getParameter("zipCode"), "UTF-8"));
		Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "UTF-8"));
	%>
