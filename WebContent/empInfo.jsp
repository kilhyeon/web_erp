<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>직원 추가</title>
</head>
<body>
	<h2>직원 정보</h2>
		<form action="EmpInsertServlet" method="get">
			<fieldset>
				<legend>직원 정보</legend>
				<ul>
					<li>
						<label for="empNo">사원번호</label>
						<input type="number" name="empNo" size="20" id="empNo" value="${emp.empNo }" readonly="readonly">
					</li>
					<li>
						<label for="empName">사원명</label>
						<input type="text" name="empName" size="20" value="${emp.empName }" readonly="readonly">
					</li>
					<li>
						<label for="title">직책</label>
						<input type="number" name="title" size="20" value="${emp.title.no }" readonly="readonly">
					</li>
					<li>
						<label for="manager">직속상사</label>
						<input type="number" name="manager" size="20" value="${emp.manager.empNo }" readonly="readonly">
					</li>
					<li>
						<label for="salary">급여</label>
						<input type="number" name="salary" size="20" value="${emp.salary }" readonly="readonly">
					</li>
					<li>
						<label for="dept">부서</label>
						<input type="number" name="dept" size="20" value="${emp.dept.deptNo }" readonly="readonly">
					</li>
					
					<li>
						<a href="EmpDelServlet?empNo=${emp.empNo }">삭제</a>
						<a href="empUpdate.jsp?empNo=${emp.empNo }&empName=${emp.empName }&title=${emp.title.no }&manager=${emp.manager.empNo }&salary=${emp.salary }&dept=${emp.dept.deptNo }">수정</a>
						<a onclick="history.back(-1)" style="cursor:pointer;">취소</a>
					</li>
				</ul>
			</fieldset>
		</form>
</body>
</html>