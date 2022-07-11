<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>PDF.js</title>
<script src="//mozilla.github.io/pdf.js/build/pdf.js"></script>
<script type="text/javascript">
	//If absolute URL from the remote server is provided, configure the CORS
	//header on that server.
// 	var url = 'https://raw.githubusercontent.com/mozilla/pdf.js/ba2edeae/examples/learning/helloworld.pdf';
// 	var url = 'http://kocw-n.xcache.kinxcdn.com/data/document/2021/seowon/choiyungon0823/5.pdf';
	var url = '';
	
	//canvas에 출력하기 버튼
	function pdf(title){ //title은 pdf 파일의 제목
		url = '/web/' + title;
	
		//Loaded via <script> tag, create shortcut to access PDF.js exports.
		var pdfjsLib = window['pdfjs-dist/build/pdf'];
		
		//The workerSrc property shall be specified.
		pdfjsLib.GlobalWorkerOptions.workerSrc = '//mozilla.github.io/pdf.js/build/pdf.worker.js';
		
		//Asynchronous download of PDF
		var loadingTask = pdfjsLib.getDocument(url);
		loadingTask.promise.then(function(pdf) {
			console.log('PDF loaded');
			
			// Fetch the first page
			var pageNumber = 1;
			pdf.getPage(pageNumber).then(function(page) {
				console.log('Page loaded');
			 
				var scale = 1.5;
				var viewport = page.getViewport({scale: scale});
				
				// Prepare canvas using PDF page dimensions
				var canvas = document.getElementById('the-canvas');
				var context = canvas.getContext('2d');
				canvas.height = viewport.height;
				canvas.width = viewport.width;
				
				// Render PDF page into canvas context
				var renderContext = {
					canvasContext: context,
					viewport: viewport
				};
				var renderTask = page.render(renderContext);
				renderTask.promise.then(function () {
					console.log('Page rendered');
				});
			});
		}, function (reason) {
		// PDF loading error
		console.error(reason);
		});
	}
	
	//뷰어로 보기 버튼
	function pdfViewr(title){ //title은 pdf 파일의 제목
		location.href="http://localhost/web/viewer.html?file=" + title;
	}
</script>
<style type="text/css">
	#the-canvas {
		border: 1px solid black;
		direction: ltr;
	}
</style>
</head>
<body>

	<%
		//사용자가 pdf가 첨부된 글을 눌렀을 때 글 제목(제목과 pdf 파일 이름을 동일하게)이 이 변수에 담겨서 알아서 pdf 제목이 변경되도록
		//String pdfTitle = (String)request.getAttribute("title");
		String pdfTitle = "test";
	%>
	<h1>PDF.js 'Hello, world!' example</h1>
	<button onclick="pdf(this.value)" value="<%=pdfTitle %>.pdf"><%=pdfTitle %>.pdf</button>
	<button onclick="pdfViewr(this.value)" value="<%=pdfTitle %>.pdf">뷰어로 보기</button><br><br>
	
	<canvas id="the-canvas"></canvas>
	
</body>
</html>
