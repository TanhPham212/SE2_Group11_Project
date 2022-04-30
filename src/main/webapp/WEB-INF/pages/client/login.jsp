<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Hanu Shop- Login</title>
<link rel="stylesheet" href="Frontend/css/login.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>


	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="login-page">
		<div class="form">
		    <h2 class="form-signin-heading" style="text-align: center">Hanu Shop- Login</h2>
		    <hr>
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Incorrect credentials</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have successfully log out</p>
				</div>
			</c:if>
			<c:if test="${param.accessDenied != null}">
				<div class="alert alert-danger">
					<p>Missing Permissions</p>
				</div>
			</c:if>

			<form class="login-form" method="POST" action="${contextPath}/login">
			    
				<input type="text" placeholder="Email" name="email" required="required" style="padding:  10px;"/> 
				
				<input type="password" placeholder="Password" name="password" required="required" style="padding:  10px;" /> 
				
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				
                <label style="padding-right: 130px; font-size: 15px;" id="label">
                    <input type="checkbox" class="form-check-input" id="" name="remember-me">
                     Remember me</label>
				
				<input id="submit" type="submit" value="Sign in">
				<p class="message" style="font-size: 18; padding-top:10px"> Don't have an account? <a href="<c:url value='/register'/> ">Create new account</a></p>
			</form>
		</div>
	</div>


	<%-- <div class="main-w3layouts wrapper">
		<h1>Login</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">

				<c:if test="${param.error != null}">
					<div class="alert alert-danger">
						<p>Incorrect credentials</p>
					</div>
				</c:if>
				<c:if test="${param.logout != null}">
					<div class="alert alert-success">
						<p>You have successfully log out</p>
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">
						<p>Missing Permissions</p>
					</div>
				</c:if>

				<!-- cái required có sẵn, nó bắt mấy lỗi cơ bản, có thể xóa đi rồi validate = javascript cũng đc -->
				<form method="POST" action="${contextPath}/login">
					<input class="text" type="text" name="email"
						placeholder="email" required> <input class="text"
						type="password" name="password" placeholder="password" required>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input type="submit" value="Sign in">
				</form>
				<p>
					Don't have an account? <a href="${contextPath}/register"> Sign up!</a>
				</p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			<p> 2022 Hanu Store, Created by Hanu SE2-04 team</p>
		</div>
	</div> --%>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>