package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;
import edu.mum.coffee.utils.BaseResponse;

@Controller
public class AdminController {
	
	 @Autowired
	 ProductService productService;
	 @Autowired
	 PersonService personService;
	 


	@GetMapping({"/admin"})
	public String login() {
		return "admin";
	}
	
	@GetMapping({"/admin/users"})
	public String showUsers(HttpServletRequest request) {
		
		List listOfUsers = new ArrayList<Person>();
		listOfUsers=personService.getAll();
		request.getSession().setAttribute("users", listOfUsers);
		return "users";
		
	}
	
}
