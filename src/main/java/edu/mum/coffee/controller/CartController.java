package edu.mum.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.CartItem;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;
import edu.mum.coffee.utils.BaseResponse;

@Controller
public class CartController {
	
	 @Autowired
	 ProductService productService;
	
	 
	 @RequestMapping(value="/addToCart/{productId}",method=RequestMethod.POST)
	public String addToCart(HttpServletRequest request,@PathVariable int productId) {
		
		 //get the session
	     HttpSession session = request.getSession();
	     //create list of cart items
	     ArrayList<CartItem> cartItems = new ArrayList<CartItem>();
	     
	     //get product from database
	     Product product = productService.getProduct(productId);
		
	     //store product information to session
	        if (session.getAttribute("cart") == null) {
	            //if not exist session cart
	            //add new product to cart
	        	cartItems.add(new CartItem(product, 1));
	        } else {
	        	cartItems = (ArrayList<CartItem>) session.getAttribute("cart");
	            //if ID is exist
	            //increase quantity
	            boolean checkID=false;
	            for (int i = 0; i < cartItems.size(); i++) {
	                if (cartItems.get(i).getProduct().getId()==productId) {
	                	cartItems.get(i).setQuantity(cartItems.get(i).getQuantity() + 1);
	                    checkID = true;
	                    break;
	                }
	            }
	            //if ID isn't exist
	            if (checkID ==false) {
	            	cartItems.add(new CartItem(product, 1));
	            }
	        }

	        float total=0;
	        for (int i = 0; i < cartItems.size(); i++) {
	            total += (cartItems.get(i).getQuantity() * cartItems.get(i).getProduct().getPrice());

	        }

	        //set session
	        session.setAttribute("cart", cartItems);
	        session.setAttribute("totalPrice",total);
	        return "redirect:/cart";
	}

	 @RequestMapping(value="/removeFromCart/{index}",method=RequestMethod.POST)
		public String removeFromCart(HttpServletRequest request,@PathVariable int index) {
			
			 //get the session
		     HttpSession session = request.getSession();
		     //create list of cart items
		     ArrayList<CartItem> cartItems = new ArrayList<CartItem>();
		     
		   //store product information to session
		        if (session.getAttribute("cart") != null) {
		        	cartItems = (ArrayList<CartItem>) session.getAttribute("cart");

		        	cartItems.remove(index);
		        }

		        float total=0;
		        for (int i = 0; i < cartItems.size(); i++) {
		            total += (cartItems.get(i).getQuantity() * cartItems.get(i).getProduct().getPrice());

		        }

		        //set session
		        session.setAttribute("cart", cartItems);
		        session.setAttribute("totalPrice",total);
		        return "redirect:/cart";
		}
	
	
}
