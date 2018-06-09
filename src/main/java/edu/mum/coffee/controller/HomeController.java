package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.ProductService;

@Controller
public class HomeController {
	
	 @Autowired
	 ProductService productService;
	 
	@GetMapping({"/", "/index", "/home"})
	public String homePage(HttpServletRequest request) {
		
		List listOfProducts = new ArrayList<Product>();
		  listOfProducts=productService.getAllProduct();
		  request.getSession().setAttribute("products", listOfProducts);
		return "home";
	}

	@GetMapping({"/secure"})
	public String securePage() {
		return "secure";
	}
}
