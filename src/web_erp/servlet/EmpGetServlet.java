package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Employee;
import web_erp.service.EmpService;

@WebServlet("/EmpGetServlet")
public class EmpGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmpService service;

	public EmpGetServlet() {
		service = new EmpService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		int empNo = Integer.parseInt(request.getParameter("empNo").trim());
		Employee emp = service.showEmp(new Employee(empNo));

		request.setAttribute("emp", emp);
		request.getRequestDispatcher("empInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
