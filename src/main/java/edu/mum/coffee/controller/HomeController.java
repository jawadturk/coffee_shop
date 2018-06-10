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
public class HomeController {
	
	 @Autowired
	 ProductService productService;
	 @Autowired
	 PersonService personService;
	 
	@GetMapping({"/", "/index", "/home"})
	public String homePage(HttpServletRequest request) {
		
		List listOfProducts = new ArrayList<Product>();
		  listOfProducts=productService.getAllProduct();
		  request.getSession().setAttribute("products", listOfProducts);
		return "home";
	}

	@GetMapping({"/login"})
	public String login() {
		return "login";
	}
	
	@GetMapping({"/cart"})
	public String openCart() {
		return "cart";
	}
	
	@GetMapping({"/register"})
	public String register() {
		return "register";
	}
	
	
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	 public String login( 
			 @RequestParam("email") String email,
			 @RequestParam("password") String password
			
			 ) {
		 
		
	  return "login";
	 }
	
	 @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	 public String saveUser( @RequestParam("firstName") String firstName,
			 @RequestParam("lastName") String lastName,
			 @RequestParam("phone") String phone,
			 @RequestParam("email") String email,
			 @RequestParam("password") String password,
			 @RequestParam("enable") boolean enable,
			 @RequestParam("city") String city,
			 @RequestParam("state") String state,
			 @RequestParam("zipcode") String zipcode,
			 @RequestParam("country") String country
			 ) {
		 
		 Address address= new Address();
		 address.setCity(city);
		 address.setCountry(country);
		 address.setState(state);
		 address.setZipcode(zipcode);
		 
		 Person person = new Person();
		 person.setAddress(address);
		 person.setEmail(email);
		 person.setEnable(enable);
		 person.setFirstName(firstName);
		 person.setLastName(lastName);
		 person.setPhone(phone);
		 
	   // Process the request
	  personService.savePerson(person);
	  return "login";
	 }
	
	
	@GetMapping({"/secure"})
	public String securePage() {
		return "secure";
	}
}
