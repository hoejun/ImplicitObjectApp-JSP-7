<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 responseTest1.jsp입니다.</h1>

<%
	//response객체의 출력의 방향을 다른 페이지로 바꾸는 메소드
	response.sendRedirect("responseTest2.jsp");
%>

</body>
</html>