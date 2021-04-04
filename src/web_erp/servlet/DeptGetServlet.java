package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.dto.Title;
import web_erp.service.DeptService;

@WebServlet("/DeptGetServlet")
public class DeptGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeptService service;

	public DeptGetServlet() {
		service = new DeptService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		int deptNo = Integer.parseInt(request.getParameter("deptNo").trim());
		Department dept = service.showDept(new Department(deptNo));

		request.setAttribute("dept", dept);
		request.getRequestDispatcher("deptInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
