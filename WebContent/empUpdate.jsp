<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보 수정</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	${list }
	<h2>직원 정보 수정</h2>
	<form action="EmpUpdateServlet" method="get">
		<fieldset>
			<legend>직원 정보</legend>
				<ul>
					<li>
						<label for="empNo">사원번호</label>
						<input type="number" name="empNo" size="20" id="empNo" value="${param.empNo }" readonly="readonly">
					</li>
					<li>
						<label for="empName">사원명</label>
						<input type="text" name="empName" size="20" id="empName" value="${param.empName }" autofocus required>
					</li>
					<li>
						<label for="title">직책</label>
						<input type="number" name="title" size="20" id="title" value="${param.title }">
					</li>
					<li>
						<label for="manager">직속상사</label>
						<input type="number" name="manager" size="20" id="manager" value="${param.manager }">
					</li>
					<li>
						<label for="salary">급여</label>
						<input type="number" name="salary" size="20" id="salary" value="${param.salary }">
					</li>
					<li>
						<label for="dept">부서</label>
						<input type="number" name="dept" size="20" id="dept" value="${param.dept }">
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