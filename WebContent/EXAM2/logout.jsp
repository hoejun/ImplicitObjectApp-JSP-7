<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션객체 메모리 영역에 있는 변수값들 모두 초기화
	session.invalidate();//세션값 제거
	
	//세션값 제거후 다시 메인 페이지로 이동
	response.sendRedirect("index.jsp");
%>