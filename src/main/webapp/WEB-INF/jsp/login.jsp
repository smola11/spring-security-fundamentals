<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Fitness Tracker Custom Login Page</title>
<style type="text/css">
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<!-- When page loads up it is going to set focus to the j_username field -->
<body onload="document.f.j_username.focus();">
	<h3>Fitness Tracker Custom Login Page</h3>
	<!-- This is going to check if there are any errors in our response and display them if present. It looks for the error attribute in the response-->
	<c:if test="${not empty error}">
		<div class="errorblock">
			Your Login was unsuccessful. <br/> 
			Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>

	<form action="j_spring_security_check" name="f" method="post">
		<table>
			<tr>
				<td>User:</td>
				<td><input type="text" name="j_username" value=""></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="j_password"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="reset" name="Reset" value="reset"></td>
			</tr>
		</table>
	</form>
</body>
</html>