<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
</head>
<body>
	<div class = "board_view">
	<div class = "board_content">
			<p class = "no">${board.no}번 게시글</p>
			<p class = "title">작성자</p>
			${board.author}<br><br>
			<p class = "title">작성일</p>
			${board.postdate}<br><br>
			<p class = "title">작성ip</p>
			${board.ip}<br><br>
			<p class = "title">조회수</p>
			${board.hit}<br><br>
			<p class = "title">제목</p>
			${board.title}<br><br>
			<p class = "title">내용</p>
			<pre>${board.content}</pre><br><br>
			<button>삭제하기</button>
			<input type = "button" value = "목록보기" id = "delete_btn">
	</div>
	
</div>
</body>
</html>