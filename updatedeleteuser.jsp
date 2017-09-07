<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Bootstrap -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<!-- =======================================================
        Theme Name: Company
        Theme URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
<style type="text/css">
.btn-info {
	background: red;
	border: none;
	border-radius: 0px;
}

.btn-info:hover {
	background: white;
	color: red;
	border: red solid 1px;
}

.modal-header {
	background: #ff3333;
	color: white;
}

.btn-default {
	background: #ff3333;
	color: white;
}

body {
	font-family: 'Open Sans', Arial, sans-serif;
	font-size: 14px;
	font-weight: 300;
	line-height: 1.6em;
	color: #000000;
	overflow-x: hidden;
}
</style>
<script type="text/javascript">
   function updateUser(id,firstName,lastName,loginId,password,phone,email,address,city,state,pincode) {	
		 $('#userID').val(id);
		 $('#firstName').val(firstName);
		 $('#lastName').val(lastName);
		 $('#loginId').val(loginId);
		 $('#password').val(password);
		 $('#phone').val(phone);
		 $('#email').val(email);
		 $('#address').val(address);
		 $('#city').val(city);
		 $('#state').val(state);
		 $('#pincode').val(pincode);
		 $('#createusermodel').modal('show');
	}
   
/*    function updatedata(){
	   var id=$('#userID').val();
	   var data ='id='+id;
	   $.ajax({
			url : "updateUser.html",
			data : data,
			type : "GET",
			success : function(response) {
				alert(response);
			},
			error : function(xhr, status, error) {
				alert(xhr.responseText);
			}
		});
   } */
   function validate(){
	   var id=$('#userID').val();
	   var username=$("#loginId").val();
	   var password=$("#password").val();
	   if(username===''){
		   $('#myModalLoginID').modal('show');
			return false;
	   }
	   
	  if(password===''){
		  $('#myModalPassword').modal('show');
			return false;
	   }
		return true;
   }
   </script>
</head>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<div class="navbar-brand">
							<a href=""><h1>
									<span>Order</span> Management
								</h1></a>
						</div>

					</div>
					<br />
					<br />
					<br />
					<div class="navbar-collapse collapse">
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li class="active"><a href="home.html">Home</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">User<b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="createuser.html">Create New User</a></li>
										<li class="divider"></li>
										<li>
										<li>
										<li><a href="updatedeleteuser.html">Update/delete
												User</a></li></li>
								</li>
								<li class="divider"></li>

							</ul>
							</li>


							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Client<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="createclient.html">Create New Client</a></li>
									<li class="divider"></li>
									<li><a href="#">Update/delete Client</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Orders<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="createorder.html">Create New Orders</a></li>
									<li class="divider"></li>
									<li><a href="#">Update/delete Orders</a></li>
									<li class="divider"></li>
									<li><a href="uploaddocuments.html">Upload Documents</a></li>
								</ul></li>


							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Principal <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="createprincipal.html">Create New
											Principal</a></li>
									<li class="divider"></li>
									<li><a href="#">Update/delete Principal</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Communication<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="createcommunication.html">Create New
											Communication</a></li>

								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Reports<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Monthy Report</a></li>
									<li class="divider"></li>
									<li><a href="#">Principal and Company Mapping</a></li>
								</ul></li>


							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Backup<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Monthly Backup</a></li>
									<li class="divider"></li>
									<li><a href="#">Yearly Backup</a></li>
								</ul></li>
							<li class="active"><a href="/OrderManagement">Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<div id="myModal"></div>
	<c:if test="${!empty userList}">
		<div class="container">
			<table class="table" border="1">
				<thead>
					<tr>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Login ID</th>
						<th>Password</th>
						<th>Mobile No</th>
						<th>Email</th>
						<th>Address</th>
					</tr>
				</thead>
				<c:forEach items="${userList}" var="document">
					<tr class="success">
						<td>${document.firstName}</td>
						<td>${document.lastName}</td>
						<td>${document.loginId}</td>
						<td>${document.password}</td>
						<td>${document.phone}</td>
						<td>${document.email}</td>
						<td>${document.address},${document.city},${document.state}-${document.pincode}</td>
						<td><button type="submit"
								onclick="updateUser('${document.id}','${document.firstName}','${document.lastName}','${document.loginId}','${document.password}','${document.phone}','${document.email}','${document.address}','${document.city}','${document.state}','${document.pincode}')"
								name="Update" class="btn btn-primary btn-lg">Update</button></td>
						<td><button type="submit" name="Delete"
								class="btn btn-primary btn-lg">Delete</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>
	
	<div id="createusermodel" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">Update
						User</button>
					<h4 class="modal-title">User</h4>
				</div>
				<div class="modal-body">
				<form:form action="updateUser.html" modelAttribute="userpojo" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
							<input type="text" name="userID" id="userID" hidden="true" />
								<label>First Name</label> <form:input name="firstName" path="firstName" id="firstName"
									type="text" placeholder="Enter First Name Here.."
									class="form-control" />
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label> <form:input path="lastName" type="text" name="lastName"
									id="lastName" placeholder="Enter Last Name Here.."
									class="form-control" />
							</div>
							<div class="col-sm-6 form-group">
								<label>LoginId</label> <form:input path="loginId" type="text"  name="loginId"
									id="loginId" placeholder="Enter login id Here.."
									class="form-control"/>
							</div>
							<div class="col-sm-6 form-group">
								<label>Password</label> <form:input path="password" type="password" id="password"
									name="password" placeholder="Enter password Here.."
									class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label>Address</label>
							<form:textarea name="address" path="address" id="address"
								placeholder="Enter Address Here.." rows="3" class="form-control"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label> <form:input path="city" type="text" name="city" id="city"
									placeholder="Enter City Name Here.." class="form-control"/>
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label> <form:input path="state" type="text" name="state" id="state" placeholder="Enter State Name Here.." class="form-control"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<label>Zip</label> <form:input path="pincode" type="text" name="pincode"
									id="pincode" placeholder="Enter Zip Code Here.."
									class="form-control"/>
							</div>
						</div>

						<div class="form-group">
							<label>Phone Number</label> <form:input path="phone" type="text" name="phone" id="phone"
								placeholder="Enter Phone Number Here.." class="form-control"/>
						</div>
						<div class="form-group">
							<label>Email Address</label> <form:input path="email" type="text" name="email" id="email"
								placeholder="Enter Email Address Here.." class="form-control"/>
						</div>

						<button onclick="return validate()" class="btn btn-lg btn-info">Update User</button>	
					</div>
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-lg"
						data-toggle="modal" data-target="#createusermodel">Close</button>
				</div>
			</div>

		</div>
	</div>
<div id="myModalLoginID" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Error!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <p>Login Id is Mandatory. Please enter Loginid!!</p>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalLoginID">Close</button>
                                   </div>
                        </div>

            </div>
     </div>
	
	
	<div id="myModalPassword" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Error!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <p>Password is Mandatory. Please enter password!!</p>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalPassword">Close</button>
                                   </div>
                        </div>

            </div>
     </div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-2.1.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/functions.js"></script>

</body>
</html>