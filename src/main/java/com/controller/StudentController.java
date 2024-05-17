package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.Calculate;

@Controller
public class StudentController {
	@GetMapping("/student")
	public String studentControl() {
		return "Student";
	}
	@PostMapping("/calculate")
	public String calculate(Calculate c,Model model) {
		
		//validation
		boolean isError = false;
		if(c.getStudentname()==null || c.getStudentname().trim().length() == 0) {
			isError = true;
			model.addAttribute("studentname","Please Enter StudentName");
		}
		if(c.getPer()==null) {	
			isError=true;
			model.addAttribute("per","Please Enter Percentage");
		}
		if(c.getYear()==null) {				
			isError= true;
			model.addAttribute("year","Please Enter Year");
		}		
		
		model.addAttribute("cal",c);
		
		
		if(isError == true) {			
			return "Student";
		}
		else {			
			String result="";
			if(c.getPer() < 35) {
				System.out.println("Fail");
				result = "Fail";
			}
			else if(c.getPer()>=35 && c.getPer()<70) {
				System.out.println("A");
				result = "A";
			}
			else if(c.getPer()>=70 && c.getPer()<90) {
				System.out.println("B");
				result="B";
			}
			else{
				System.out.println("C");
				result = "C";
			}
			model.addAttribute("result",result);
			return "Result";
		}
	}
}
