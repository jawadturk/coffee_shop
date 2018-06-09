package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.ProductService;
import edu.mum.coffee.utils.BaseResponse;

@RestController
@RequestMapping("/products")
public class ProductsController {
	

	 private static final String SUCCESS_STATUS = "success";
	 private static final String ERROR_STATUS = "error";
	 private static final int CODE_SUCCESS = 100;
	 private static final int CODE_FAIL = 101;
	 private static final int AUTH_FAILURE = 102;
	 
	 @PostConstruct
	 public void check()
	 {
		 System.out.print(" entering my controller");
	 }
	 
	 @Autowired
	 ProductService productService;
	  
	 @RequestMapping(value = "/save", method = RequestMethod.POST)
	 public BaseResponse pay( @RequestBody Product product) {
	  BaseResponse response = new BaseResponse();
	
	   // Process the request
		 productService.save(product);
	   // Return success response to the client.
	   response.setStatus(SUCCESS_STATUS);
	   response.setCode(CODE_SUCCESS);
	 
	  return response;
	 }
	
	 @RequestMapping(value = "/all", method = RequestMethod.GET,headers="Accept=application/json")
	 public List<Product> getProducts()
	 {
	  List listOfProducts = new ArrayList<Product>();
	  listOfProducts=productService.getAllProduct();
	  return listOfProducts;
	 }
	 
	 
	  @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	    public BaseResponse deleteProduct(@PathVariable("id") int id) {
		  BaseResponse response = new BaseResponse();
		  
		  Product product = productService.getProduct(id);
	        if (product == null) {
	        	   response.setStatus(ERROR_STATUS);
	    		   response.setCode(CODE_FAIL);
	        }else {
	        	  // Process the request
	 	       productService.delete(product);
	 		   // Return success response to the client.
	 		   response.setStatus(SUCCESS_STATUS);
	 		   response.setCode(CODE_SUCCESS);
	        }
		  
		  
		
		 
		  return response;
	    }
	  
	  
	  @RequestMapping(value = "/update", method = RequestMethod.PUT)
	    public BaseResponse deleteProduct(@RequestBody Product product,Model model) {
		  BaseResponse response = new BaseResponse();
		  
		 
		  // Process the request
	       productService.save(product);
		   // Return success response to the client.
		   response.setStatus(SUCCESS_STATUS);
		   response.setCode(CODE_SUCCESS);
		 
		  return response;
	    }

}
