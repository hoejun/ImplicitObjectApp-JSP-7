<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 sessionTest1.jsp입니다.</h1>
<%
	//session객체 메모리 영역 내부에 sessionVal변수를 선언하여 문자열을 저장한다.
	session.setAttribute("sessionVal", "이것은 세션 변수에 값을 저장한 내용입니다.");
%>
</body>
</html>