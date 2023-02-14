package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.view.RedirectView;

import com.demo.bean.Employee;
import com.demo.dao.EmployeeDao;

@Controller
public  class EmployeeController {

	@Autowired
	EmployeeDao dao;

	@RequestMapping("/")
	public String home(Model m) {
		List<Employee> employees = dao.getAllEmployees();
		m.addAttribute("employees", employees);
		return "index";
	}

	@RequestMapping("/form")
	public String addEmployee(Model m) {
		m.addAttribute("title", "Add Employee");
		return "form";
	}

	@RequestMapping(value = "/handle-employee", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Employee employee, HttpServletRequest request) {
		System.out.println(employee);
		dao.addEmployee(employee);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("id") int id, HttpServletRequest request) {
		dao.deleteEmployee(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("id") int id, Model model) {
		Employee employee = dao.getEmployee(id);
		model.addAttribute("employee", employee);
		return "update_form";
	}
}
