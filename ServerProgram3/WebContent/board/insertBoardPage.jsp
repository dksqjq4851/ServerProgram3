<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			const f = $('#f');
			const title = $('#title')
			const insert_btn = $('#insert_btn');
			insert_btn.click(function(){
				if(title.val() ==''){
					alert('제목은 필수입니다.');
					title.focus();
					return;
				}
				f.attr('action', '/ServerProgram3/insertBoard.do');
				f.submit();
			})
			
			$('#list_btn').click(function(){
				location.href = '../listBoard.do';
			})
			
		})
	</script>
</head>
<body>
	<div class = "insert_form">
	<form id = "f" method = "post" enctype = "multipart/form-data">
		<p class = "title">작성자</p>
		<input type = "text" id = "author" name = "author" value = "홍길동"><br>
		<p class = "title">제목</p>
		<input type = "text" id = "title" name = "title" placeholder = "새 글입니다." autofocus><br>
		<p class = "content">내용</p>
		<textarea id = "content" name="content" placeholder = "새 내용입니다."></textarea><br><br>
		<input type = "hidden" name = "ip" value = "<%=request.getRemoteAddr()%>">
		<input type = "button" value = "저장하기" id = "insert_btn">
		<input type = "reset" value = "작성초기화" id = "reset_btn">
		<input type = "button" value = "목록보기" id = "list_btn">
		
	</form>
</div>
</body>
</html>