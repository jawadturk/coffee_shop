package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;
import edu.mum.coffee.utils.BaseResponse;

@RestController
@RequestMapping("/persons")
public class PersonsController {

	 private static final String SUCCESS_STATUS = "success";
	 private static final String ERROR_STATUS = "error";
	 private static final int CODE_SUCCESS = 100;
	 private static final int CODE_FAIL = 101;
	 private static final int AUTH_FAILURE = 102;
	 
	 @Autowired
	 PersonService personService;
	 
	 
	 @RequestMapping(value = "/save", method = RequestMethod.PUT)
	 public BaseResponse pay( @RequestBody Person person) {
	  BaseResponse response = new BaseResponse();
	
	   // Process the request
	  personService.savePerson(person);
	   // Return success response to the client.
	   response.setStatus(SUCCESS_STATUS);
	   response.setCode(CODE_SUCCESS);
	 
	  return response;
	 }
	
	 
	 @RequestMapping(value = "/all/{email}", method = RequestMethod.GET,headers="Accept=application/json")
	 public List<Person> getPersons(@PathVariable("email") String email)
	 {
	  List listOfPersons = new ArrayList<Product>();
	  listOfPersons=personService.findByEmail(email);
	  return listOfPersons;
	 }
	 
}
