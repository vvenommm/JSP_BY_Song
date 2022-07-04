<%@page import="java.io.File"%>
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
		String path = "d://z_fileUpload";
		
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
		while(params.hasNext()){ //다음이 있나 없나 확인하는 메소드
			FileItem item = (FileItem)params.next();
			
			//일반 데이터 형식인지 파일 형식인지 구분하는 조건문
			if(item.isFormField()){ //일반 데이터(name, subject)
				//?name=오만과편견&subject=소설
				String name = item.getFieldName(); //name, subject
				String value = item.getString("utf-8"); //오만과 편견, 소설
				out.print(name + " = " + value + "<br />");
			}else{ //파일(filename)
				String fileFieldName = item.getFieldName(); //filename
				String fileName = item.getName(); //업로드할 파일명
				String contentType = item.getContentType(); //만약 이미지 : image/jpeg
				
				//파일명만 추출(경로는 제외)
				//d:\\upload\\pictures\\tomato.png에서 마지막 \\의 위치를 찾아서 +1하면 t.거기서부터 끝까지 추출 => tomato.png
				fileName.substring(fileName.lastIndexOf("\\")+1);
				
				//파일의 크기
				long fileSize = item.getSize();
				
				//54번째 줄의 주소가 d://upload/로 바뀜. 복사해야 함 => 계획
				File file = new File(path + "/" + fileName);
				
				//복사 실행
				item.write(file);
				
				out.print("=====================<br />");
				out.print("요청 파라미터 이름 : " + fileFieldName + "<br />");
				out.print("저장 파일 이름 : " + fileName + "<br />");
	            out.print("파일 콘텐츠 유형 : " + contentType + "<br />");
	            out.print("파일 크기 : " + fileSize);
			}
		}
	%>
	
</body>
</html>
