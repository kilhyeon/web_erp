package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.ds.JndiDS;
import web_erp.dto.Employee;
import web_erp.impl.EmployeeDaoImpl;

public class EmpService {
	private Connection con = JndiDS.getConnection();
	private EmployeeDaoImpl dao = EmployeeDaoImpl.getInstance();

	public EmpService() {
		dao.setCon(con);
	}

	public List<Employee> showEmps() {
		return dao.selectEmployeeByAll();
	}

	public Employee showEmp(Employee emp) {
		return dao.selectEmployeeByNo(emp);
	}

	public void addEmp(Employee emp) {
		dao.insertEmployee(emp);
	}

	public void removeEmp(int empNo) {
		dao.deleteEmployee(empNo);
	}

	public void modifyEmp(Employee emp) {
		dao.updateEmployee(emp);
	}

}
