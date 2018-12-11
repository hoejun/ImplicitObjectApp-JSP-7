<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>여기는 sessionTest2.jsp입니다.</h1>
<!-- session객체 메모리 영역에 들어 있는 sessionVal변수값을 꺼내어 출력 -->
<%=session.getAttribute("sessionVal") %>

</body>
</html>