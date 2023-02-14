package com.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.bean.Employee;

@Service
public class EmployeeDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void addEmployee(Employee employee) {
		this.hibernateTemplate.save(employee);
	}

	@Transactional
	public void updateEmployee(Employee employee) {
		this.hibernateTemplate.update(employee);
	}

	public Employee getEmployee(int id) {
		Employee e = this.hibernateTemplate.get(Employee.class, id);
		return e;
	}

	public List<Employee> getAllEmployees() {
		List<Employee> list = this.hibernateTemplate.loadAll(Employee.class);
		return list;
	}

	@Transactional
	public void deleteEmployee(int id) {
		Employee e = this.hibernateTemplate.load(Employee.class, id);
		this.hibernateTemplate.delete(e);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
