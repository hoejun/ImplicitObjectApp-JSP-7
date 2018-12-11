<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//login.jsp 페이지에서 넘어온 session 객체 메모리 영역에 들어있는 "id" 변수값을 꺼내어서 id 변수에 저장
	String id = (String) session.getAttribute("id");

	//DB에 저장되어 있는 "master" id값과, login.jsp 페이지의 폼 로그인시 넘겨받은 id 값이 같을때..
	if("master".equals(id)){
%>
	<h2><%=id %>님 즐거운 쇼핑 되세요.</h2>
	<a href="logout.jsp">로그아웃</a>
	<a href="index.jsp">메인으로</a>
<%
	}else{
%>
	<script type="text/javascript">
		alert("로그인을 하셔야 합니다.\n 로그인 페이지로 이동합니다.");
		location.href="login.jsp";
	</script>
	<%
	}
	%>
</body>
</html>