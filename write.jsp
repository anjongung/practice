<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>게시글 입력</title>
</head>

<body>
<h1>게시글 입력 페이지</h1>
<form action="insert.jsp" method="post">
	<table border="1">
			<tr>
				<td>분류</td>
				<td><input type="text" name="type" size="60"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" size="60"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name" size="60"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="memo" cols="53" rows="5"></textarea></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td>작성날짜</td>
				<td><input type="text" name="date" size="60"></td>
			</tr>
	</table>
	<br><input type="submit" value="게시글 등록">
</form>
</body>
</html>