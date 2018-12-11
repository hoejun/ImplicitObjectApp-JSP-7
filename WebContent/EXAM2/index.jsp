<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>환영합니다. to my home</h1>

<%
	//login.jsp 페이지에서 넘어온 session객체 메모리 영역에 들어있는 "id" 변수값을 꺼내어서 id 변수에 저장
	String id = (String) session.getAttribute("id");//값을 전달 받으면 로그인에 성공. 
	
	/*
		참고! session객체 메모리 영역에 들어있는 "id" 변수에 값이 있다면? 로그인 했다 라는 뜻.
		//"master"<--DB에 저장되어 있는 id값으로 가정,
		//"1111"<--DB에 저장되어 있는 pass값으로 가정.
	*/
	
	//DB에 저장되어 있는 "master" id값과, login.jsp페이지의 로그인시 넘겨받은 id값이 같을때...
	if("master".equals(id)){
%>
		<%=id %>님의 방문을 환영합니다.<p>
		<a href="logout.jsp">로그아웃</a>
		<a href="shop.jsp">쇼핑몰</a>
<%
	}else{//id 틀릴때...
%>
	<a href="login.jsp">로그인</a>
	<a href="login.jsp">쇼핑몰</a>
<%
	}
%>

</body>
</html>