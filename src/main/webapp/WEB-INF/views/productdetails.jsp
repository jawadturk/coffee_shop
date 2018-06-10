<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Add new product</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="<c:url value='/static/css/bootstrap.css' />"   rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="<c:url value='/static/css/style.css' />"  rel='stylesheet' type='text/css' />
<!-- js -->
 
 <script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
<!-- //js -->

<link href="<c:url value='/static/css/font-awesome.css' />"  rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
</head>
<body>

<!--register-->

	<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Add product</h3>
					<form action="../products/${product.id}" method="post">
						<div class="key">
							<i class="fa fa-shopping-basket" aria-hidden="true"></i>
							<input  type="text" value="${product.productName}" name="productName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '${product.productName}';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-book" aria-hidden="true"></i>
							<input  type="text" value="${product.description}" name="description" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Description';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-money" aria-hidden="true"></i>
							<input  type="text" value="${product.price}"  name="price" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'price';}" required="">
							<div class="clearfix"></div>
						</div>
						

          			 
						<div class="key">
						 <select id="productType" name="productType" required="">
           			     <option value="">Product Type</option>
            		     <option value="BREAKFAST">BREAKFAST</option>
            		     <option value="LUNCH">LUNCH</option>
            		     <option value="DINNER">DINNER</option>
            		     </select>
            		    <div class="clearfix"></div>
						</div>
         
						
						<input type="hidden" name="id"  value="${product.id}" />
					
						<input type="hidden" name="enable"  value="true" />
					
						<input type="submit" value="Save Product">
					</form>
				</div>
				
			</div>
		</div>



</body>
</html>



