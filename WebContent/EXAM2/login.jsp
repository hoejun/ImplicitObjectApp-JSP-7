<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--현재 페이지 login.jsp에 로그인 요청 --%>
<form action="login.jsp" method="post">
	아이디 : <input type="text" name="id"><p>
	패스워드 : <input type="password" name="pw">
	<input type="submit" value="로그인">&nbsp; &nbsp;
	<input type="reset" value="취소">
</form>

<%
	//폼요청 방식이 post방식일때..
	if(request.getMethod().equals("POST")){
	    //로그인시 아이디 패스워드 넘겨 받아 저장
	    String id=request.getParameter("id");
	    String pw=request.getParameter("pw");
	    
	    //DB에 저장되어 있는 "master" id값이 같고,
	    //login.jsp페이지의 폼 로그인시 넘겨받은 id 값이 같고.
	    if("master".equals(id)){
	        //DB에 저장되어 있는 "1111" pw값과
	        //login.jsp 페이지의 폼 로그인시 넘겨받은 pw값이 같을때,
	        if("1111".equals(pw)){
	            //session객체 영역에 "id"라는 변수를 만들어 넘겨받은 id값과 저장
	            session.setAttribute("id", id);
	            
	            //index.jsp 메인 페이지로 이동
	            response.sendRedirect("index.jsp");
	        }else{
%>
	<script type="text/javascript">
			alert("패스워드가 틀립니다.");
	</script>
<%
	        }
	        //DB에 저장되어 있는 "1111" pw값과
	        //login.jsp 페이지의 폼 로그인시 넘겨받은 pw값이 틀리고.
	    }else{
	        //DB에 저장되어 있는 "1111" pw값과
	        //login.jsp 페이지의 폼 로그인시 넘겨받은 pw값이 같을때...
	    	if("1111".equals(pw)){
%>
				<script type="text/javascript">
					alert("아이디가 틀립니다.");
				</script>
<%
	    	}else{//pw값이 다를때,
%>
				<script type="text/javascript">
					alert("아이디, 비밀번호 둘다 틀립니다.");
				</script>
<%
	    	}
	    }
	}
%>

</body>
</html>