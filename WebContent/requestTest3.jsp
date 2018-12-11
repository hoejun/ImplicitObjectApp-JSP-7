<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//name배열은 이 예제에서 표시할 웹브라우저 및 웹서버의 정보에 대한 설명을 배열로 저장한다.
    	//이렇게 사용하면 일일이 설명문을 for문을 사용해서 설명과 가져온 정보를 쌍으로 표시 할 수 있음.
   		String names[] = {"프로토콜 이름", "서버 이름", "Method방식",
   		        			"컨텍스트 경로", "URI", "접속한 클라이언트 IP"};
    	String values[] = {
    	        			request.getProtocol(),//웹서버로 요청시 사용중인 프로토콜
    	        			request.getServerName(),//웹서버로 요청시 사용중인 도메인이름 리턴
    	        			request.getMethod(),//웹서버로 요청시 요청에 사용된 요청방식(GET, POST)
    	        			request.getContextPath(),//해당 JSP페이지가 속한 웹프로젝트 경로 리턴함.
    	        			request.getRequestURI(),//웹서버로 요청시 요청에 사용된 URL로부터 URI값을 리턴함.
    	        			request.getRemoteAddr()//웹서버로 정보를 요청한 웹브라우저의 ip주소 반환
    	};
    	//URL과 URI 차이점!! 참고
    	// http://localhost:8080/ImplicitObjectApp/requestTest3.jsp
    	
    	/*
    		URL란?  웹상에서 서비스를 제공하는 각 서버들이 제공하고 있는 파일들의 위치를 명시하기 위한 전체주소
    		http://localhost:8080/ImplicitObjectApp/requestTest3.jsp
    	*/
    	/*
    		URI란? URL로부터 존재하는 자원을 식별하기 위한 일반적인 식별자를 규졍한 포트번호 이후 주소.
    		ImplicitObjectApp/requestTest3.jsp        
    	*/
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
주제 : request객체는 요청된 파라미터값 이외에도 웹 브라우저와 웹서버의 정보도 가져 올 수 있다.
<h1>웹브라우저와 웹서버 정보 표시</h1>

<%
	/*
		for문은 웹브라우저와 웹서버 정보를 가지고 있는 value배열의 내용과
		이들의 설명을 가지고 있는 names배열의 내용을 출력.
	*/
	
	for(int i=0; i<names.length; i++){
	    out.println(names[i] + ":" + values[i] + "<br/>");
	}
%>

</body>
</html>