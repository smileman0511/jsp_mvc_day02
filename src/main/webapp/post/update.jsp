<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	<%
		PostVO post = (PostVO)request.getAttribute("post");
	%>
	<form action="/mvc/update-ok.post" method="post">
		<input name="id" type="hidden" value="<%=post.getId() %>"/>
		<div>
			<span>게시글 제목</span>
			<input name="postTitle" value="<%=post.getPostTitle() %>"/>
		</div>
		<div>
			<span>게시글 내용</span>
			<input name="postContent" value="<%=post.getPostContent() %>" />
		</div>
		<button>게시글 수정</button>
	</form>
</body>
</html>


