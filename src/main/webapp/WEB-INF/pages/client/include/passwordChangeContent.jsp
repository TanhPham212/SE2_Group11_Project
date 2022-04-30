<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change password</title>
</head>
<body>
<div class="container">
	<form>
		<div class="col-md-3" >
			<br>		
			<p style="line-height:2;">Old password *</p>
			<p style="line-height:2;" id="oldWarning"></p>
			<input size="27" type ="password"  id="old">
		
			<p style="line-height:2;"> New password *</p>
			<p style="line-height:2;" id="new1Warning"></p>
			<input size="27" type ="password"  id="new1">
			
			<p style="line-height:2;">Confirm new password *</p>
			<p style="line-height:2;" id="new2Warning"></p>
			<input size="27" type ="password" id="new2">
		
			<br><br>
		</div>		
	</form>
	<button onClick="changePass()" class="btn btn-primary">Change</button>
</div>
</body>
</html>
<script src="<c:url value='/js/client/password.js'/>" ></script>	