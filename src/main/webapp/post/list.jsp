<%@page import="com.app.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 페이지</title>
</head>
<body>

<%
	List<PostVO> posts = (List<PostVO>)request.getAttribute("posts");
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
	<%
		for(PostVO post: posts){
	%>
		<tr>
			<td><%=post.getId() %></td>
			<td>
				<a href="/mvc/read.post?id=<%=post.getId() %>"><%=post.getPostTitle() %></a>
			</td>
			<td><%=post.getPostContent() %></td>
			<td><%=post.getPostCreateAt() %></td>
		</tr>
	<%
		}	
	%>			
	</table>

</body>
</html>