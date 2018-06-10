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
<title>Add new user</title>
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
					<h3>Add user</h3>
					<form action="saveUser" method="post">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Firstname" name="firstName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Firstname';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Lastname" name="lastName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Lastname';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Phone" name="phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="City" name="city" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="State" name="state" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Country" name="country" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Country';}" required="">
							<div class="clearfix"></div>
						</div>

						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="ZipCode" name="zipcode" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ZipCode';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<input  type="text" value="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
					
						<input type="hidden" name="enable"  value="true" />
					
						<input type="submit" value="Add user">
					</form>
				</div>
				
			</div>
		</div>



</body>
</html>



