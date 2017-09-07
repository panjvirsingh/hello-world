<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<style type="text/css"></style>
<!-- Bootstrap -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" />
<style type="text/css">
label:after {
	content: ": ";
}

label {
	color: black;
	font-weight: bold;
	padding: 4px;
	text-transform: uppercase;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: xx-medium;
}

.well {
	min-height: 20px;
	padding: 19px;
	margin-bottom: 20px;
	background-color: #808080;
	border: 1px solid #e3e3e3;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
}

.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

input[type="text"],input[type="password"] {
	height: 40px;
}
</style>
<!-- =======================================================
        Theme Name: Company
        Theme URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
<script type="text/javascript">
	var counter = 2;
	function createContact() {
		if (counter > 10) {
			alert("Only 10 contacts allow");
			return false;
		}

		$("#contacts")
				.append(
						'<br/><br/><div class="col-sm-5 form-group"><label>Contact person name </label><input type="text" name="contactname'+counter+'" id="contactname'+counter+'" placeholder="Enter contact person name here.." class="form-control">	</div><div class="col-sm-5 form-group">	<label>Contact person designation  </label>	<input type="text" name="contactdesignation'+counter+'" id="contactdesignation'+counter+'"placeholder="Enter Contact person designation Here.." class="form-control"></div>');
		counter++;
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
							<a href="index.html"><h1>
									<span>Com</span>pany
								</h1></a>
						</div>
					</div>
					<br /> <br /> <br />
					<div class="navbar-collapse collapse">
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li class="active"><a href="home.html">Home</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">User<b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="createuser.html">Create New User</a></li>
										<li class="divider"></li>
										<li><li><li><a href="updatedeleteuser.html">Update/delete User</a></li></li></li>
										 <li class="divider">
										</li>
									</ul></li>


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
										<li><a href="#">Update/delete Orders</a></li><li class="divider"></li><li><a href="uploaddocuments.html">Upload Documents</a></li>
									</ul></li>


								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Principal <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="createprincipal.html">Create New Principal</a></li>
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
									<li class="active"><a href="/OrderManagement">Logout</a>
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


	<div class="container">
		<h1 class="well">Registration Form</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<form:form action="saveClient.html" modelAttribute="companypojo">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Company Name</label> <form:input path="name" type="text" placeholder="Enter First Name Here.." class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label>Address</label>
							<form:textarea path="address" placeholder="Enter Address Here.." rows="3"
								class="form-control"></form:textarea>
						</div>
						<div class="row">
							<div class="row">
								<div class="col-sm-6 form-group">
									<label>Location</label>
								</div>
							</div>

							<div class="col-sm-4 form-group">
								<label>City</label> <form:input path="city" type="text" 
									placeholder="Enter City Name Here.." class="form-control"/>
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label> <form:input path="state" type="text"
									placeholder="Enter State Name Here.." class="form-control"/>
							</div>
							<div class="col-sm-4 form-group">
								<label>Zip</label> <form:input type="text" path="pincode"
									placeholder="Enter Zip Code Here.." class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label>Phone Number</label> <form:input type="text" path="phone"
								placeholder="Enter Phone Number Here.." class="form-control"/>
						</div>
						<div class="form-group">
							<label>Email Address</label> <form:input type="text" path="email" 
								placeholder="Enter Email  Here.." class="form-control"/>
						</div>
						<div class="form-group">
							<label>IEC number</label> <form:input type="text" path="iecNumber" 
								placeholder="Enter IEC number Here.." class="form-control"/>
						</div>
						<div class="row" id="contacts">
							<div class="row">
								<div class="col-sm-6 form-group">
									<label>Contact Person Details</label>
								</div>
							</div>


							<div class="col-sm-4 form-group">
								<label>Contact person name </label> <form:input path="" type="text" id="contactname1" name="contactname1" placeholder="Enter contact person name here.."
									class="form-control"/>
							</div>
							<div class="col-sm-4 form-group">
								<label>Contact person designation </label>  <form:input path="" type="text" id="contactdesignation1" name="contactdesignation1" placeholder="Enter Contact person designation Here.."
									class="form-control"/>

							</div>

						</div>
						<button type="button" onclick="createContact()"
							class="btn btn-lg btn-info">Click to create more
							contacts</button>

						<button type="submit" class="btn btn-lg btn-info">Submit</button>
					</div>
				</form:form>
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
	<script src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/functions.js"></script>
	

</body>
</html>