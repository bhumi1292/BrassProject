<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/header.css">
</head>
<body>
<div class="header">
	<img alt="Logo Loded" src="images/Logo/Veda_Excom_Logo.png" width="300px" height="150px">
	<div class="header-right" align="center">
		<img alt="" src="images/Banner/Banner_2.jpg" width="880px" height="150px">
	</div>
</div>

	<%
	String nam =(String) session.getAttribute("client");
	%>

<div class="header">
  
  <div class="header-left">
    <a class="active" href="home.jsp">HOME</a>
    <a href="Product.jsp">PRODUCTS</a>
  <a href="cartTbl.jsp?nam=<%out.print(nam);%>">CART</a> 
    <a href="aboutus.jsp">ABOUT US</a>
    <a href="contactus.jsp">CONTECT US</a>
    <a href="feedback.jsp">FEEDBACK</a>
    <a href="adminheader.jsp">ADMIN LOGIN</a>
    <a href="customerDetail.jsp">SIGN UP FREE</a>
      </div>
      <%@page import="java.util.*" %>
      <div class="header-right"><%Date d= new Date();
      							SimpleDateFormat sf = new SimpleDateFormat("dd/MM/yyyy");
      							out.print("<a>"+sf.format(d)+"</a>");
      							%>
      							</div>
      
      
      
</div>
<div align="right">
<br>
      	 <%
      		if(session.getAttribute("client") != null)
      		{
      	 out.print("Wlcome " + nam);
      		
      	%>
      	
      	&nbsp;&nbsp;<a href="clientLogout.jsp" onclick="return confirm('Are you sure you want to Logout?');">LogOut</a><%} %> 
      	
      </div>
</body>
</html>