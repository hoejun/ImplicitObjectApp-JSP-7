<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>여기는 applictionTest2.jsp입니다.</h1>

<%--application객체 메모리 영역에 들어있는 applicationVal변수값을 꺼내어서 출력 --%>
<%=application.getAttribute("applicationVal")%>
<p>

<%--모든 사용자가 사용하는 공통적인 데이터를 web.xml에 저장한 context-parm객체의 "adminEmail" 변수값 꺼내어 쓰기--%>
<%=application.getInitParameter("adminEmail") %>
<p>

<%--application객체 메모리 영역에 들어있는 Tomcat버전 정보 --%>
<%=application.getServerInfo() %>
<p>

<%--현재 톰켓서버가 지원하는 서블릿 API의 상위 버전 정보를 반환 --%>
<%=application.getMajorVersion() %>
<p>

어플리케이션 결론 : 
웹 어플리케이션이 시작 될 때 생성되어 웹어플리케이션이 종료 될때까지 데이터가 유지된다.<br>
이 보관에 데이터를 보관하면 웹 어플리케이션이 실행되는 동안에 모든 서블릿이 사용 할 수 있다.<br>
하나의 웹 어플리케이션을 모든 사용자가 사용하기 위한 방문자 숫자를 나타낼때 어플리케이션 객체에 공통적인 값을 저장한다.
</body>
</html>