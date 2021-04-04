<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>직책 추가</title>
</head>
<body>
	<h2>직책 정보</h2>
		<form action="TitleInsertServlet" method="get">
			<fieldset>
				<legend>직책 정보</legend>
				<ul>
					<li>
						<label for="tno">직책번호</label>
						<input type="number" name="tno" size="20" id="tno" value="${title.no }" readonly="readonly">
					</li>
					<li>
						<label for="tname">직책명</label>
						<input type="text" name="tname" size="20" value="${title.name }" readonly="readonly">
					</li>
					<li>
						<a href="TitleDelServlet?no=${title.no }">삭제</a>
						<a href="titleUpdate.jsp?no=${title.no }&name=${title.name }">수정</a>
						<a onclick="history.back(-1)" style="cursor:pointer;">취소</a>
					</li>
				</ul>
			</fieldset>
		</form>
</body>
</html>