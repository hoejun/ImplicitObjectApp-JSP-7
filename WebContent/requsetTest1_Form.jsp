<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Requet예제입니다.</h1>
<form action= "./requestTest1_1.jsp" method="post">
<table border="1" width="400">
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
			남<input type="radio" name="gender" value="male">
			여<input type="radio" name="gender" value="female">
		</td>
	</tr>
	<tr>
		<td>취미</td>
		<td>
			독서  <input type="checkbox" name="hobby" value="독서">
			게임  <input type="checkbox" name="hobby" value="게임">
			TV시청<input type="checkbox" name="hobby" value="TV시청">
			축구  <input type="checkbox" name="hobby" value="축구">
			기타  <input type="checkbox" name="hobby" value="기타">
		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="전송"></td>
	</tr>
</table>

</form>
</body>
</html>