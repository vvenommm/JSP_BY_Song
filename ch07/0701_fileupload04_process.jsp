<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "org.apache.commons.fileupload.*" %>
<!DOCTYPE html>
<html>
<head>
<title>File Upload</title>
</head>
<body>

	<%
		//윈도우 경로 : 역슬래쉬 두 개
		String path = "d://upload";
		
		//commons-fileupload.jar 안에 해당 클래스 존재
		DiskFileUpload upload = new DiskFileUpload();
		
		//업로드할 파일의 최대 크기
		upload.setSizeMax(1000000); //1Mbyte
		
		//메모리에 저장할 최대 크기
		upload.setSizeThreshold(4096);
		
		//업로드된 파일을 임시로 저장할 경로
		upload.setRepositoryPath(path);
		
		//요청 파라미터 받기
		//name = 오만과편견&subject = 소설
		//filename이라는 파일 객체
		//parse : 구문분석, 의미분석
		List items = upload.parseRequest(request);
		
		//요청 파라미터를 Iterator(열거) 클래스로 변환
		Iterator params = items.iterator();
		
		//요청 파라미터가 없어질 때까지 반복(3회 반복)
		while(params.hasNext()){
			FileItem item = (FileItem)params.next();
		}
		
		
		
	%>
	
</body>
</html>
