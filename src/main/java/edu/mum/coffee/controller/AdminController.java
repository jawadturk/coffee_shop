package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.domain.ProductType;
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
	
	@GetMapping({"/admin/adduser"})
	public String addUser() {
		return "adduser";
	}
	 @RequestMapping(value = "/admin/saveUser", method = RequestMethod.POST)
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
	  return "redirect:/admin/users";
	 }
	 
	 @GetMapping({"/admin/addproduct"})
		public String addProduct() {
			return "addproduct";
		}
	 
	 @GetMapping({"/admin/products"})
		public String getProducts(HttpServletRequest request) {
			
			List listOfProducts = new ArrayList<Product>();
			listOfProducts=productService.getAllProduct();
			request.getSession().setAttribute("products", listOfProducts);
			return "products";
			
		}
	 
	 @RequestMapping(value = "/admin/saveProduct", method = RequestMethod.POST)
	 public String saveProduct( @RequestParam("productName") String productName,
			 @RequestParam("description") String description,
			 @RequestParam("price") String price,
			 @RequestParam("productType") ProductType productType
			 ) {
		 
		
		 
		 Product product = new Product();
		product.setProductType(productType);
		product.setProductName(productName);
		product.setDescription(description);
		product.setPrice(Double.parseDouble(price));
		 
	   // Process the request
	  productService.save(product);
	  return "redirect:/admin/products";
	 }
	 
	 
		@RequestMapping(value="admin/products/{id}", method=RequestMethod.GET)
		public String get(@PathVariable int productId, Model model) {
			model.addAttribute("product", productService.getProduct(productId));
			return "productDetails";
		}
		
		@RequestMapping(value="admin/products/{id}", method=RequestMethod.POST)
		public String update(Product product, @PathVariable int id) {
			productService.save(product);
			return "redirect:/admin/products";
		}
	
}
