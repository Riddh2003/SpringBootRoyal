package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.ProductBean;

@Controller
public class ProductController {
	@GetMapping("/newproduct")
	public String newProduct() {
		return "NewProduct";
	}
	@PostMapping("/saveproduct")
	public String saveProduct(ProductBean p) {
		System.out.println(p.getProductName());
		System.out.println(p.getPrice());
		return "Home";
	}
}
