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
					
						<div class="clearfix">
							<h1 class="pull-left">Users</h1>
							
							<div class="pull-right top-page-ui">
								<a href="<c:url value="adduser" />" class="btn btn-primary pull-right">
									<i class="fa fa-plus-circle fa-lg"></i> Add user
								</a>
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-12">
								<div class="main-box clearfix">
									<div class="table-responsive">
										<table class="table user-list">
											<thead>
												<tr>
													<th><span>User</span></th>
													<th><span>phone</span></th>
													<th class="text-center"><span>Active</span></th>
													<th><span>Email</span></th>
													<th><span>Address</span></th>
													<th>&nbsp;</th>
												</tr>
											</thead>
											<tbody>
											
											<c:forEach items="${users}" var="user" varStatus="status">
                       	<tr>
													<td>
														<img src="<c:url value="/static/images/george.png"/>" alt="">
														<a href="" class="user-link">${user.firstName}  ${user.lastName}</a>
														<span class="user-subhead"></span>
													</td>
													<td>
														${user.phone}
													</td>
													<td class="text-center">
														<!--  <span class="label label-default">Inactive</span>-->
														<span class="label label-success">Active</span>
														
													</td>
													<td>
														${user.email}
													</td>
													<td>
													${user.address.country},${user.address.state},${user.address.city},${user.address.zipcode}
													</td>
													<td style="width:10%;">
													
														<a href="http://superhero.phoonio.com/users.html#" class="table-link">
															<span class="fa-stack">
																<i class="fa fa-square fa-stack-2x"></i>
																<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
															</span>
														</a>
														<a href="http://superhero.phoonio.com/users.html#" class="table-link danger">
															<span class="fa-stack">
																<i class="fa fa-square fa-stack-2x"></i>
																<i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
															</span>
														</a>
													</td>
												</tr>
               								</c:forEach>
											
											
		
											</tbody>
										</table>
									</div>
									
								</div>
							</div>
						</div>
					
					
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
	

</body></html>



