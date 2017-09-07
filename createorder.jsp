<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<!-- Bootstrap -->
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
										<li><li><li><a href="updatedeleteuser.html">Update/delete User</a></li></li></li> <li class="divider"></li>
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
										<li><a href="createcommunication.html">Create New Communication</a></li>

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


	<section id="contact-page">
		<div class="row contact-wrap">
			<div class="status alert alert-success" style="display: none"></div>
			<div class="col-md-6 col-md-offset-3">
				<div id="sendmessage">Your message has been sent. Thank you!</div>
				<div id="errormessage"></div>
				<form action="" method="post" role="form" class="contactForm">

					<div class="form-group">
						<select	class="form-control" id="sel1">
						    <option selected="selected">Select Customer</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					
						<div class="form-group">
						<select	class="form-control" id="sel1">
						    <option selected="selected">Select Principal</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
						
					<div class="form-group">
						<select	class="form-control" multiple id="sel1">
						    <option selected="selected">Select Product</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>1</option>
							<option>2</option>
						</select>
					</div>
					
					<div class="form-group">
						<select	class="form-control" multiple id="sel1">
						    <option selected="selected">Select Quarter</option>
							<option>Q1</option>
							<option>Q2</option>
							<option>Q3</option>
							<option>Q4</option>
						</select>
					</div>
					
					
					<div class="form-group">
						<input type="text" class="form-control" name="quantity" id="quantity"
							placeholder="Quantity"
							data-msg="Please enter a valid Quantity" />   <label>Min Quantity is </label>
						<div class="validation"></div>
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" name="paymenttem" id="paymenttem"
							placeholder="Payment Term"
							data-msg="Please enter a valid payment term" />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="subject"
							name ="destination" id="destination" placeholder="Destination" data-rule="minlen:4"
							data-msg="Please enter valid destination" />
						<div class="validation"></div>
					</div>
		
					<div class="text-center">
						<button type="submit" name="submit" class="btn btn-primary btn-lg"
							required="required">Generate Order</button>
					</div>
				<%-- 	<div class="text-center">
					<span class="well pull-left">
					<a href="<c:url value='/add-document-${user.id}' />">Click here to upload/manage your documents</a>	
					</span>
					</div> --%>
				</form>
			</div>
		</div>
		<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#contact-page-->

	<footer>
		<div class="footer">
			<div class="container">
				<div class="social-icon">
					<div class="col-md-4">
						<ul class="social-network">
							<li><a href="#" class="fb tool-tip" title="Facebook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="twitter tool-tip" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="gplus tool-tip" title="Google Plus"><i
									class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="linkedin tool-tip" title="Linkedin"><i
									class="fa fa-linkedin"></i></a></li>
							<li><a href="#" class="ytube tool-tip" title="You Tube"><i
									class="fa fa-youtube-play"></i></a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4 col-md-offset-4">
					<div class="copyright">
						&copy; Order Management
						<div class="credits"></div>
					</div>
				</div>
			</div>
			<div class="pull-right">
				<a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
			</div>
		</div>
	</footer>

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