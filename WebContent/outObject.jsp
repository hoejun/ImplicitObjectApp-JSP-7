<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page buffer="8kb" autoFlush="false" %>
    <%
    	int a=10, b=5;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
out
-웹브라우저에 데이터를 전송하는 출력 스트림이다.<br>
-비스크립트요소(HTML 코드 or 텍스트)과 값을 출력하는 표현식의 결과는 out기본 객체 그대로 전달된다.<br>
-JSP페이지가 사용하는 버퍼는 실제로 out기본객체가 내부적으로 사용하고 있는 버퍼이다.<br>
-isAutoFlush()메소드의 값을 결정하는 것은 page 디렉티브의 autoFlush속성이다.<br>

<h2>out객체 미사용</h2>
<%
	if(a==10){
%>

<%=a + "을 가진 변수는 'A'입니다." %><br>

<%
	}else if(b==10){
%>

<%= b + "을 가진 변수는 'B'입니다." %><br>

<%
	}
%>

<h2>out객체 사용</h2>
<%
	if(a==10){
	    out.println(a + "을 가진 변수는 'A'입니다.");
	}else if(b==10){
	    out.println(b + "을 가진 변수는 'B'입니다.");
	}
%>

<hr>

<h2>버퍼 정보</h2>
버퍼 크기 :
<%=out.getBufferSize() %><br>
남은 크기 :
<%=out.getRemaining() %><br>
auto flush : 버퍼공간
<%=out.isAutoFlush() %>

</body>
</html>