<%@page import="com.app.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
</head>
<body>

<%
	PostVO post = (PostVO)request.getAttribute("post");
%>

<!-- 
	테이블 화면 출력
-->
	<table border="1">
	<tr>
		<th>게시글 번호</th>
		<th>상품 제목</th>
		<th>상품 내용</th>
		<th>상품 날짜</th>
	</tr>
	<tr>
		<td><%=post.getId() %></td>
		<td><%=post.getPostTitle() %></td>
		<td><%=post.getPostContent() %></td>
		<td><%=post.getPostCreateAt() %></td>
	</tr>
	</table>
	<button onclick="window.location.href='/mvc/update.post?id=<%=post.getId() %>'">게시글 수정</button>
	<button onclick="window.location.href='/mvc/delete.post?id=<%=post.getId() %>'">게시글 삭제</button>
</body>
</html>


