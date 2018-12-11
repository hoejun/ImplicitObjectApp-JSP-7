<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//index.html페이지의 form태그안의 선택된 radio버튼의 문자열 값 리턴 받아 저장
	String choice = request.getParameter("gender");

	//남성이면
	if(choice.equals("m")){
	    //남성 전문 페이지로 이동하라
	    response.sendRedirect("man.html");
	}else{//여성이면
	    //여성 전문 페이지로 이동하라.
	    response.sendRedirect("woman.html");
	}
%>