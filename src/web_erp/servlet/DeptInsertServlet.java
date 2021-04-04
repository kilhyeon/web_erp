package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.service.DeptService;

@WebServlet("/DeptInsertServlet")
public class DeptInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeptService service;
 
    public DeptInsertServlet() {
    	service = new DeptService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int deptNo = Integer.parseInt(request.getParameter("deptNo").trim());
		String deptName = request.getParameter("deptName");
		int floor = Integer.parseInt(request.getParameter("floor").trim());
		
		Department dept = new Department(deptNo, deptName, floor);
		
		service.addDept(dept);
		
		response.sendRedirect("DeptListServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
