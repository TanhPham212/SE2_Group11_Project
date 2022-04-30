<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liên hệ</title>
</head>
<body>
	<div class="container">
	<br>
	    <p style="font-size: 30px">Contact us</p>
	    <hr>	
		<form>
			<div class="form-group">
				<label for="email">Your email:</label> 
				<p id="emailWarning" style="color: red"></p>
				<input type="email" class="form-control" id="email">
			</div>
			<div class="form-group">
				<label for="content">Contact Information:</label> 
				<p id="contentWarning" style="color: red"></p>
				<textarea class="form-control" id="content"></textarea>
			</div>
		</form>
		<button onClick="sendContact()" class="btn btn-primary">Send</button>
	</div>
<script src="<c:url value='/js/client/contactAjax.js'/>" ></script>	
</body>
</html>
