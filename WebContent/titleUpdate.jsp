<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 수정</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	${list }
	<h2>직책 정보 수정</h2>
	<form action="TitleUpdateServlet" method="get">
		<fieldset>
			<legend>직책 정보</legend>
				<ul>
					<li>
						<label for="tno">직책번호</label>
						<input type="number" name="tno" size="20" id="tno" value="${param.no }" readonly="readonly">
					</li>
					<li>
						<label for="tname">직책명</label>
						<input type="text" name="tname" size="20" id="tname" value="${param.name }" autofocus required>
					</li>
					<li>
						<input type="submit" value="수정">
						<input type="reset" value="취소">
						<input type="button" value="취소" onclick="history.back(-1)">
					</li>
				</ul>
		</fieldset>
	</form>
</body>
</html>