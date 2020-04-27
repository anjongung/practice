<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>

<!doctype html>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=3.0">
<link rel="stylesheet" href="./home.css">
<title>게시판</title>
</head>

<body>
<table>
	<caption>게시판 리스트</caption>
	<tr>
		<th>분류</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String DB_URL = "jdbc.mariadb://localhost:3306/board";
		String DB_USER = "root";
		String DB_PASSWORD = "1234";
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			stmt = conn.createStatement();
			String sql = "select * from content order by id asc";
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
			out.println("DB 접속 에러");
		}
	%>
	<tr>
		<td>rs.getString("type")</td>
		<td>rs.getString("title")</td>
		<td>rs.getString("name")</td>
		<td>rs.getString("date")</td>
	</tr>
</table>
<div>
	<button type="button">글 쓰기</button>
</div>
<span class="window">
	<input type="text" class="input_text" placeholder="검색어 입력">
	<button type="submit" class="sch_smit">검색</button>
</span>
</body>
</html>
