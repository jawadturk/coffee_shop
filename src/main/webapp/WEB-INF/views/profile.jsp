<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html>
<head>
<title>Profile</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="<c:url value='/static/css/font-awesome.css' />"  rel="stylesheet"> 

<link href="<c:url value='/static/css/bootstrap.css' />"   rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="<c:url value='/static/css/profile_elements.css' />"  rel='stylesheet' type='text/css' />
<link href="<c:url value='/static/css/profile_layout.css' />"  rel='stylesheet' type='text/css' />






</head>
<body style="">

	<div class="container">
		<div class="row">
			
			<div class="col-md-12" id="content-wrapper">
				<div class="row" style="opacity: 1; transform: translateY(0px);">
					<div class="col-lg-12">
						
						<h1>User Profile</h1>
						<div class="row" id="user-profile">
							<div class="col-lg-3 col-md-4 col-sm-4">
								<div class="main-box clearfix">
									<h2>${profile.firstName} ${profile.lastName}</h2>
									
									
									
									<img src="<c:url value="/static/images/scarlet-159.png"/>"  alt="" class="profile-img img-responsive center-block">
									
									
									
								
								</div>
							</div>
							
							<div class="col-lg-9 col-md-8 col-sm-8">
								<div class="main-box clearfix">
									<div class="profile-header">
										<h3><span>User info</span></h3>
										<a href="http://superhero.phoonio.com/user-profile.html#" class="btn btn-primary edit-profile">
											<i class="fa fa-pencil-square fa-lg"></i> 
											Edit profile
										</a>
									</div>
									
									<div class="row profile-user-info">
										<div class="col-sm-8">
											<div class="profile-user-details clearfix">
												<div class="profile-user-details-label">
													First Name
												</div>
												<div class="profile-user-details-value">
													${profile.firstName}
												</div>
											</div>
											<div class="profile-user-details clearfix">
												<div class="profile-user-details-label">
													Last Name
												</div>
												<div class="profile-user-details-value">
													${profile.lastName}
												</div>
											</div>
											<div class="profile-user-details clearfix">
												<div class="profile-user-details-label">
													Address
												</div>
												<div class="profile-user-details-value">
													${profile.address.city},<br> 
													${profile.address.country}, ${profile.address.state}., ${profile.address.zipcode}
												</div>
											</div>
											<div class="profile-user-details clearfix">
												<div class="profile-user-details-label">
													Email
												</div>
												<div class="profile-user-details-value">
													${profile.email}
												</div>
											</div>
											<div class="profile-user-details clearfix">
												<div class="profile-user-details-label">
													Phone number
												</div>
												<div class="profile-user-details-value">
													${profile.phone}
												</div>
											</div>
										</div>
										
									</div>
									
								
									
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



