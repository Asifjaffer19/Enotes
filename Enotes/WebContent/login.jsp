<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Login Page</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h1>Login page</h1>
					</div>

					
						<%
							String invalidMsg = (String) session.getAttribute("login-failed");

							if (invalidMsg != null) {
						%>

						<div class="alert alert-danger" role="alert"><%=invalidMsg %></div>
						
						<%
						session.removeAttribute("login-failed");
							}
						%>
					<div class="card-body">

						<form action="loginservlet" method="post">


							<div class="form-group">
								<label> Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control"
									id="exampleInputPassword1 " name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>


				</div>
			</div>
		</div>
	</div>
	<%@ include file="all_component/footer.jsp"%>


</body>
</html>