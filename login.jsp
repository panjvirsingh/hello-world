<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />


<style>
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

<title>Login</title>

</head>

<body>
	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/OrderManagement">Home</a></li>
				<li class="active"><a href="login.html">Login</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>

	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>Welcome to Order Management Multi-user application</h1>
				<p>Login to explore the complete features!</p>
			</div>
		</div>

		<div></div>
	</div>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<s:form id="myForm"  modelAttribute="user"  action="loginform.html" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							method="post">
							<fieldset>
								<legend>User Enrollment Login Form</legend>
								<s:label path="">User Name<s:input path="firstName" label="User Name" name="userName"
									cssClass="col-lg-12" placeholder="User Name" /></s:label>

								<s:label path="">Password<s:password path="lastName" name="password"
									cssClass="col-lg-12" placeholder="Password" /></s:label>
								
								<div class="form-group">
						<select	class="form-control" id="sel1">
						    <option selected="selected">Select User Type</option>
							<option>Admin</option>
							<option>Other</option>
						</select>
					</div>
								<div class="col-lg-9 col-lg-offset-3">
									<s:input path="" type="button" cssClass="btn btn-default" value="Cancel" />
									<s:input path="" type ="submit" cssClass="btn btn-primary" value="Login" />
								</div>
								<input type="hidden"  name="pageName" value="login" />
							</fieldset>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>