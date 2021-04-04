<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 목록</title>
</head>
<body>
${list }
	<h2>직원 목록</h2>
	<table border="1">
		<thead>
			<tr><td>사원번호</td><td>사원명</td><td>직책</td><td>직속상사</td><td>급여</td><td>부서</td></tr>
		</thead>
		<tbody>
		<c:forEach var="emp" items="${list }">
			<tr>
				<td>${emp.empNo }</td>
				<td><a href="EmpGetServlet?empNo=${emp.empNo}">${emp.empName }</a></td>				
				<td>${emp.title.name }(${emp.title.no })</td>				
				<td>
					<c:if test="${emp.manager.empNo eq 0 }">
						없음
					</c:if>
					<c:if test="${emp.manager.empNo ne 0 }">
						${emp.manager.empName }(${emp.manager.empNo })
					</c:if>
				</td>				
				<td><fmt:formatNumber value="${emp.salary }" pattern="#,###"/></td>
				<td>${emp.dept.deptName }(${emp.dept.deptNo })</td>				
			</tr>
		</c:forEach>		
		</tbody>
			<tfoot>
				<tr><td colspan="3"><a href="empInput.jsp">사원 추가</a></td></tr>
				<tr><td colspan="3"><a href="index.jsp">메인 화면</a></td></tr>
			</tfoot>
	</table>
</body>
</html>