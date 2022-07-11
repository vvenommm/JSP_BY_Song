package filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogFileFilter implements Filter {
	
	//파일로 만들어야 하므로 파일 객체 전역변수로 선언
	PrintWriter writer;
	
	//초기화. 시작
	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
		//filename <= d:\\z_logs\\webmarket.log
		String filename = config.getInitParameter("filename");
		
		if(filename == null) {
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		}
		
		try {
			//writer 객체 사용
			writer = new PrintWriter(new FileWriter(filename, true), true);
		}catch(IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		System.out.println("접속한 클라이언트 IP : " + request.getRemoteAddr());
		
		//시스템 현재 시간(시작 시간)
		long start = System.currentTimeMillis();
		System.out.println("접근한 URL 경로 : " + getURLPath(request));
		System.out.println("요청 처리 시작 시각 : " + getCurrentTime());
		
		//필터가 연속적으로 있다면 다음 필터로 제어 및 요청/응답 정보를 넘겨줌
		chain.doFilter(request, response);
		
		//시스템 현재 시간(종료 시간)
		long end = System.currentTimeMillis();
		System.out.println("요청 처리 조욜 시각 : " + getCurrentTime());
		System.out.println("요청 처리 소요 시간 : " + (end-start) + "ms"); //1000분의 1초 단위
		System.out.println("=========================================");
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
		//파일 객체 닫기. 메모리에서 제거
		writer.close();
		
	}
	
	//http://localhost/ch03/readParameterNoErrorPage.jsp?name=개똥이
		private String getURLPath(ServletRequest request) {
			//HttpServletRequest(자식)는 ServletRequest(부모)를 상속받음
			HttpServletRequest req;
			
			//currentPath : URL 경로 => http://localhost/ch03/readParameterNoErrorPage.jsp
			String currentPath = "";
			
			//queryString : 요청 파라미터 => name=개똥이
			String queryString ="";
			
			//instanceOf 연산자는 객체가 어떤 클래스인지, 어떤 클래스를 상속 받았는지 확인
			if(request instanceof HttpServletRequest) {
				req = (HttpServletRequest)request;
				currentPath = req.getRequestURI(); //http://localhost/ch03/readParameterNoErrorPage.jsp
				System.out.println("currentPath : " + currentPath);
				
				queryString = req.getQueryString(); // name=개똥이
				System.out.println("queryString : " + queryString);
				
				queryString = queryString == null ? "" : "?" + queryString; //?name=개똥이
			}
			
			return currentPath + queryString;
			
		}//end getURLPath()
		
		//현재 시간을 얻어오는 메소드
		private String getCurrentTime() {
			//포맷 예) 2022/07/11 10:35:12
			DateFormat formatter = new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
			
			//calendar 객체 생성(싱글톤 : 메모리에 1번 생성하고 전역변수처럼 사용할 수 있음)
			Calendar calendar = Calendar.getInstance();
			
			//톰캣 서버에서 제공해주는 시스템 현재 시간을 구해서 캘린더 객체에 세팅
			calendar.setTimeInMillis(System.currentTimeMillis());
			return formatter.format(calendar.getTime());
			
		}
	
}
