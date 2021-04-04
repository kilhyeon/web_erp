<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 수정</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	${list }
	<h2>부서 정보 수정</h2>
	<form action="DeptUpdateServlet" method="get">
		<fieldset>
			<legend>부서 정보</legend>
				<ul>
					<li>
						<label for="deptNo">부서번호</label>
						<input type="number" name="deptNo" size="20" id="deptNo" value="${param.deptNo }" readonly="readonly">
					</li>
					<li>
						<label for="deptName">부서명</label>
						<input type="text" name="deptName" size="20" id="deptName" value="${param.deptName }" autofocus required>
					</li>
					<li>
						<label for="floor">위치</label>
						<input type="number" name="floor" size="20" id="floor" value="${param.floor }">
					</li>
					<li>
						<input type="submit" value="수정">
						<input type="reset" value="초기화">
						<input type="button" value="취소" onclick="history.back(-1)">
					</li>
				</ul>
		</fieldset>
	</form>
</body>
</html>