<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.feedback.*,java.util.*,java.sql.*" %>
	<%
		String nam = feedbackDao.getCustName(request.getParameter("fname"));
	
		if(nam != "")
		{
	
		int id = feedbackDao.getCustId(request.getParameter("fname"));
		String email = request.getParameter("femail");
		String city = request.getParameter("fcity");
		String pin = request.getParameter("fpin");
		String des = request.getParameter("fdesc");
		
		int r=0;
		
		try{
			
			Connection con = feedbackDao.getconnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO `tbl_feedback`(`Cust_ID`, `Email_ID`, `City`, `Pincode`, `Description`, `IsAct`) VALUES (?,?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, email);
			ps.setString(3, city);
			ps.setString(4, pin);
			ps.setString(5, des);
			ps.setString(6, "true");
			
			r = ps.executeUpdate();
			
			if(r>0)
			{
				%>
					<jsp:include page="feedback.jsp"></jsp:include>
					<h2 align="center">FeedBack seccessFully submited</h2>
				<% 
			}
		}
				catch(Exception e)
			{
				System.out.print(e);
			}
		}
		else
		{
			%>
				<jsp:include page="feedback.jsp"></jsp:include>
				<h2 align="center"> This Name Not Registerd</h2>
			<%
		}
	%>
</body>
</html>