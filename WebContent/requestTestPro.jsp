<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//요청 값의 한글 인코딩을 위해 request내장 객체를 사용함.
    	request.setCharacterEncoding("UTF-8");
    %>
    <%
    	//넘어오는 요청 파라미터 변수의 변수값을 얻어내기 위해 request내장 객체의 get메소드 사용함.
    	String num = request.getParameter("num");
    	String name = request.getParameter("name");
    	String grade = request.getParameter("grade");
    	String subject = request.getParameter("subject");
    %>

    <h1>학생정보</h1>
    
    <table border="1" width="300">
    <tr>
    	<td>학번</td>
    	<td><%=num %></td>
    </tr>
    <tr>
    	<td>이름</td>
    	<td><%=name %></td>
    </tr>
    <tr>
    	<td>학년</td>
    	<td><%=grade %></td>
    </tr>
    <tr>
    	<td>선택과복</td>
    	<td><%=subject %></td>
    </tr>
    </table>