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
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
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
   .btn-info
{
    border:none;
    border-radius:0px;
}
.btn-info:hover
{
    background:white;
    color:red;
    border:red solid 1px;
}
.modal-header
{
    background:#ff3333;
    color:white;
}
.btn-default
{
    background:#ff3333;
    color:white;
}

  </style>
   <script type="text/javascript">
   function test(){
	   $('#success').modal('show');
   }
  
 </script>  
</head>
<body onload="test()">
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

	
	<section id="main-slider" class="no-margin">
        <div class="carousel slide">      
            <div class="carousel-inner">
                <div class="item active" style="background-image: url(images/slider/bg1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h2 class="animation animated-item-1">User  <span>Added Successfully</span></h2>
                                </div>
                            </div>

                           

                        </div>
                    </div>
                </div><!--/.item-->             
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    </section><!--/#main-slider-->


	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<div id="success" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Success</h4>
                                   </div>
                                   <div class="modal-body">
                                         <p>Client Added Successfully!!</p>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#success">Close</button>
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
	<script src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/functions.js"></script>
	

</body>
</html>