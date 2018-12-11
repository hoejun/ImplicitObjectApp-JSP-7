<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>국어와 영어의 평균</h1>
<%
/*
	사용자가 전달한 request객체 데이터 저장소에 저장되어 있는 국어점수, 영어점수를..
	getParameter메소드를 이용하여 문자열 값으로 리턴 받기.
	받은 값을 Integer클래스의 paresInt()메소드를 사용하여 문자열을 기본 정수형으로 변환하여 저장.
*/

	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));

	//국어, 영어 평균
	int avg=(kor+eng)/2;
	//out.println(avg);
%>

당신의 평균 <%=avg%>입니다.

</body>
</html>