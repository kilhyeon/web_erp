package web_erp.service;

import java.sql.Connection;
import java.util.List;


import web_erp.ds.JndiDS;
import web_erp.dto.Department;
import web_erp.dto.Title;
import web_erp.impl.DepartmentDaoImpl;

public class DeptService {
	private Connection con = JndiDS.getConnection();
	private DepartmentDaoImpl dao = DepartmentDaoImpl.getInstance();

	public DeptService() {
		dao.setCon(con);
	}

	public List<Department> showDepts() {
		return dao.selectDepartmentByAll();
	}
	
	public Department showDept(Department dept) {
		return dao.selectDepartmentByNo(dept);
	}

	public void addDept(Department dept) {
		dao.insertDepartment(dept);
	}

	public void removeDept(int deptNo) {
		dao.deleteDepartment(deptNo);
	}

	public void modifyDept(Department dept) {
		dao.updateDepartment(dept);
	}
	
	
}
