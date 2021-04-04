<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>부서 추가</title>
</head>
<body>
	<h2>부서 정보</h2>
		<form action="DeptInsertServlet" method="get">
			<fieldset>
				<legend>부서 정보</legend>
				<ul>
					<li>
						<label for="deptNo">부서번호</label>
						<input type="number" name="deptNo" size="20" id="deptNo" value="${dept.deptNo }" readonly="readonly">
					</li>
					<li>
						<label for="deptName">부서명</label>
						<input type="text" name="deptName" size="20" value="${dept.deptName }" readonly="readonly">
					</li>
					<li>
						<label for="floor">위치</label>
						<input type="number" name="floor" size="20" value="${dept.floor }" readonly="readonly">
					</li>
					<li>
						<a href="DeptDelServlet?deptNo=${dept.deptNo }">삭제</a>
						<a href="deptUpdate.jsp?deptNo=${dept.deptNo }&deptName=${dept.deptName }&floor=${dept.floor }">수정</a>
						<a onclick="history.back(-1)" style="cursor:pointer;">취소</a>
					</li>
				</ul>
			</fieldset>
		</form>
</body>
</html>