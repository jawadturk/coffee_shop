<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Cart</title>
<link href="<c:url value='/static/css/cart_style.css' />"  rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Flat Cart Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
 <script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>




</head>
<body>

<div class="cart">
   <div class="cart-top">
   	  <div class="cart-experience">
   	  	 <h4>Shopping Cart</h4>
   	  </div>
   	  <div class="cart-login">
   	  	  	 
   	  	 <div class="clear"> </div>
   	  </div>
   	 <div class="clear"> </div>
   </div>
   <div class="cart-bottom">
   	 <div class="table">
   	 	<table>
   	 		<tbody>
   	 	      <tr  class="main-heading">	  	      	
		 			<th>Images</th>
		 			<th class="long-txt">Product Description</th>
		 			<th>Quantity</th>
		 			<th>Price</th>
		 			<th>Total</th> 		 			 	
   	 	     </tr>
   	 	     
   	 	     	<c:forEach items="${cart}" var="cartItem" varStatus="status">
                        <tr class="cake-top">
   	 	     	<td class="cakes">	 	     	  
   	 	     		<div class="product-img">
   	 	     			<img src="<c:url value="/static/images/cake.png"/>" >
   	 	     		</div>
   	 	        </td>
   	 	        <td class="cake-text">
   	 	     		<div class="product-text">
   	 	     			<h3>${cartItem.product.productName}</h3>
   	 	     			<p>${cartItem.product.description}</p>
   	 	     		</div>
 	     	    </td>
 	     	    <td class="quantity"> 	 	     	 
   	 	     	  <div class="product-right">
   	 	     	  	 <input min="1" type="number" id="quantity" name="quantity" value="${cartItem.quantity}" class="form-control input-small">				  
   	 	     	  </div>
   	 	     	</td>
   	 	     	<td class="price">
   	 	     		<h4>$${cartItem.product.price}</h4>	 	     		
   	 	     	</td>
   	 	     	<td class="top-remove">
   	 	     		<h4>$${cartItem.product.price*cartItem.quantity}</h4>
   	 	     		<div class="close">
   	 	     	      
   	 	     	      <form action="removeFromCart/${status.index}" method="post">
						<button class="btn btn-danger my-cart-btn my-cart-b"  type="submit"><h5>Remove</h5></button>
						</form>
   	 	            </div>
   	 	     	</td>
  	 	     	
   	 	     </tr>
                </c:forEach>
   	 	     
   	 	    
   	 	   
   	 	   </tbody>
   	 	</table>
   	 </div>
   	 <div class="vocher">
   	 
   	 	<div class="dis-total">
   	 		<h1>Total $${totalPrice}</h1>
   	 		<div class="tot-btn">
   	 			<a class="shop" href="<c:url value="home" />">Back to Shop</a>
   	 			<a class="check" href="<c:url value="/checkOut" />">Continue to Checkout</a>
   	 		</div>
   	 	</div>
   	   <div class="clear"> </div>
   	 </div>
   </div>
</div>


</body>
</html>




