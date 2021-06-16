<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/headeradmin.css">
</head>
<body>

<%
		if(session.getAttribute("userid") != null)
		{
			%>
				<jsp:include page="index.jsp"></jsp:include>
			<%
			String nam = (String)session.getAttribute("userid");
			%>
			<div class="wel" align="center"><h3>Welcome<%out.print(" "+nam);%></h3></div>
			
			<div class="navbar">
  
  <a href="designation.jsp">DESIGNATION</a>
  <div class="dropdown">
    <button class="dropbtn">EMPLOYEE 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      
      <a href="employeeDetail.jsp">EMPLOYEE DETAIL</a>
      <a href="empJoin.jsp">EMPLOYEE TYPE</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">ITEM 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="itemType.jsp">ITEM TYPE</a>
      <a href="itemDetail.jsp">ITEM DETAIL</a>
      
      
    </div>
  </div>
  
  
    <a href="UploadImg.jsp">IMAGE</a>
   
   <div class="dropdown">
    <button class="dropbtn">ORDER 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      
      <a href="itemBill.jsp">ITEM BILL</a>
      <a href="bill.jsp">BILL DETAIL</a>
      
    </div>
  </div>
   <a href="#">FEEDBACK</a>
   <a href="adminlogout.jsp" onclick="return confirm('Are you sure you want to Logout?');">LOGOUT</a>
</div>
			
			<%
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
		}
%>
    
    


	

	

  
 
 
 
 
</body>
</html>