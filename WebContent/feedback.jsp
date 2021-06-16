<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/shadow.css">
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<form action="insertFeedback.jsp" method="post">
		
		<h2 align="center">FeedBack</h2>
		<hr width="22%">
		
		<br/>
		<table align="center" cellspacing="20">
			
			
			<tr>
				<td>Your Name:</td>
				<td><input type="text" name="fname" required="required"/></td>
			</tr>
			<tr>
				<td>Your Email-ID:</td>
				<td><input type="email" name="femail" required="required"/></td>
			</tr>
			<tr>
				<td>Select City:</td>
				<td>
					<select name="fcity" required>
						<option value="">--Select--</option>
						<option>Jamnagar</option>
						<option>Rajkot</option>
						<option>Ahmadabad</option>
						<option>Bhavnagar</option>
						<option>Dhrol</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Pincode :</td>
				<td><input type="number" name="fpin" required="required" /></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="fdesc" required="required"  /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	</form>
</body>
</html>