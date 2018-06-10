<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<!-- saved from url=(0039)http://superhero.phoonio.com/users.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>users</title>
	
    <!-- bootstrap -->
    <link href="<c:url value='/static/css/bootstrap.css' />"   rel='stylesheet' type='text/css' />
	<!-- Custom Theme files -->
	<link href="<c:url value='/static/css/layout.css' />"  rel='stylesheet' type='text/css' />
	    
	<link href="<c:url value='/static/css/elements.css' />"  rel='stylesheet' type='text/css' />


    <!-- libraries -->
	<link href="<c:url value='/static/css/font-awesome.css' />"  rel="stylesheet"> 

   

    
</head>
<body style="">

	<div class="container">
		<div class="row">
			
			<div class="col-md-12" id="content-wrapper">
				<div class="row" style="opacity: 1; transform: translateY(0px);">
					<div class="col-lg-12">
						
						<div   class="row">
							<div class="col-lg-4 col-sm-6 col-xs-12">
								<div onclick="location.href='<c:url value="admin/users" />';" class="main-box infographic-box">
									<i class="fa fa-user red"></i>
									<span class="value">Users</span>
								</div>
							</div>
							<div class="col-lg-4 col-sm-6 col-xs-12">
								<div class="main-box infographic-box">
									<i class="fa fa-shopping-cart emerald"></i>
									<span class="value">Orders</span>
								</div>
							</div>
							<div  class="col-lg-4 col-sm-6 col-xs-12">
								<div onclick="location.href='<c:url value="admin/products" />';" class="main-box infographic-box">
									<i class="fa fa-money green"></i>
									<span class="value">Products</span>
								</div>
							</div>
							
						</div>
						
						
					
						
						
						
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
</body>

</html>



