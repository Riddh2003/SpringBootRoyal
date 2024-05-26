package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import java.util.*;
import com.Bean.EmployeeBean;

@Controller
public class EmployeeController {

	@Autowired
	JdbcTemplate stmt;

	@GetMapping("/employee")
	public String addEmployee() {
		return "EmployeeForm";
	}

	
	//save into database 
	@PostMapping("/saveEmployee")
	public String viewEmployee(@Validated EmployeeBean employee, BindingResult result, Model model) {
		model.addAttribute("employee", employee);
		if (result.hasErrors()) {
			model.addAttribute("error", "Please, Enter the Value.");
			return "EmployeeForm";
		} else {
			// db insert -> db : table : spring -> ready s
			// mysql connecter jar
			// dbconnection ->open -> preapardstatement
			stmt.update("insert into emptable(firstName,lastName,email,password) values(?,?,?,?)",
					employee.getFirstName(), employee.getLastName(), employee.getEmail(), employee.getPassword());
			return "ViewEmployee";
		}
	}

	
	//For show all the Employees details in table from
	@GetMapping("/listEmp")
	public String listEmployee(Model model) {
		List<EmployeeBean> employee = stmt.query("select * from emptable",new BeanPropertyRowMapper<EmployeeBean>(EmployeeBean.class));
		model.addAttribute("employee", employee);
		return "ListEmployee";
	}

	
	//For search the Employees
	@GetMapping("/searchEmp")
	public String searchEmployee() {
		return "SearchEmployee";
	}
	 
	@PostMapping("/searchEmp")
	public String searchEmployeeDb(EmployeeBean employeeBean, Model model) {

		// sql Query
		// select * from employee where like '%c%';
		List<EmployeeBean> employee = stmt.query("select * from emptable where firstName like ?",
				new BeanPropertyRowMapper<EmployeeBean>(EmployeeBean.class),
				new Object[] { employeeBean.getFirstName() + "%" });
		model.addAttribute("employee", employee);
		return "ListEmployee";
	}

	//For delete the Employees details 
	@GetMapping("/deleteEmp")
	public String deleteEmployee(EmployeeBean employeeBean) {
		// delete from emptable where EID = ?
		stmt.update("delete from emptable where id = ?", employeeBean.getId());
		return "redirect:/listEmp";// redirect url not jsp this time
	}

	
	//For view the Employees details 
	@GetMapping("/viewEmp")
	public String viewAllEmployee(EmployeeBean employeeBean, Model model) {
		// select * from emptable where id = ?
		EmployeeBean employee = stmt.queryForObject("select * from emptable where id = ?",
				new BeanPropertyRowMapper<EmployeeBean>(EmployeeBean.class), new Object[] {employeeBean.getId()});
		model.addAttribute("emp",employee);
		return "ViewEmpInfo";
	}
	
	
	//For edit the Employees details 
	@GetMapping("/editEmp")
	public String editEmployee(EmployeeBean employeeBean,Model model) {
		EmployeeBean employee = stmt.queryForObject("select * from emptable where id = ?",
				new BeanPropertyRowMapper<EmployeeBean>(EmployeeBean.class), new Object[] {employeeBean.getId()});
		model.addAttribute("emp",employee);
		return "EditEmployee";
	}
	
	@PostMapping("/updateEmp")
	public String updateEmployee(EmployeeBean employeeBean) {
		
		stmt.update("update emptable set firstName = ?, lastName = ?, email = ?, password = ? where id = ?",
				employeeBean.getFirstName(),employeeBean.getLastName(),employeeBean.getEmail(),employeeBean.getPassword(),employeeBean.getId());
		return "redirect:/listEmp";//redirect to listemp url 
	}
//	@PostMapping("/saveEmployee")
//	public String viewEmployee(EmployeeBean employee, Model model) {
//		boolean isError = false;
//		if (Validators.isEmpty(employee.getFirstName())) {
//			isError = true;
//			model.addAttribute("firstNameerror", "Please, Enter the FirstName.");
//		}else if(Validators.isAlpha(employee.getFirstName()) == false) {
//			isError = true;
//			model.addAttribute("firstNameerror", "Please, Enter the Valid FirstName.");
//		}
//		
//		if (Validators.isEmpty(employee.getLastName())) {
//			isError = true;
//			model.addAttribute("lastNameerror", "Please, Enter the LastName.");
//		}else if(Validators.isAlpha(employee.getLastName()) == false) {
//			isError = true;
//			model.addAttribute("firstNameerror", "Please, Enter the Valid LastName.");
//		}
//		
//		if (Validators.isEmpty(employee.getEmail())) {
//			isError = true;
//			model.addAttribute("emailerror", "Please, Enter the Email.");
//		}else if(Validators.isEmail(employee.getEmail()) == false) {
//			isError = true;
//			model.addAttribute("emailerror", "Please, Enter the valid Email.");
//		}
//
//		if (Validators.isEmpty(employee.getPassword())) {
//			isError = true;
//			model.addAttribute("passworderror", "Please, Enter the Password.");
//		}else if(Validators.isPassword(employee.getPassword()) == false) {
//			isError = true;
//			model.addAttribute("passworderror", "Please, Enter the valid Password.");
//		}
//
//		if (employee.getAge() == null) {
//			isError = true;
//			model.addAttribute("ageerror", "Please, Enter the Age");
//		}
//		
//		if(Validators.isEmpty(employee.getHobby())) {
//			isError = true;
//			model.addAttribute("hobbyerror","Please, Select the Hobby.");
//		}
//		
//		if (Validators.isEmpty(employee.getAddress())) {
//			isError = true;
//			model.addAttribute("addresserror", "Please, Enter the Address");
//		}else if(Validators.isPassword(employee.getAddress()) == false) {
//			isError = true;
//			model.addAttribute("addresserror", "Please, Enter Valid	 the Address");
//		}
//		
//		if (employee.getCity().equals("-1")) {
//			isError = true;
//			model.addAttribute("cityerror", "Please, Select the City.");
//		}
//		
//		if (Validators.isEmpty(employee.getGender())) {
//			isError = true;
//			model.addAttribute("gendererror", "Please, Select the Gender.");
//		}
//		model.addAttribute("address",employee.getAddress());
//		model.addAttribute("employee", employee);
//		if (isError == true) {
//			return "EmployeeForm";
//		} else {
//			return "ViewEmployee";
//		}
//	}

}
