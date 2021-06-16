<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("u");    
    String pwd = request.getParameter("p");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/brassdata",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from tbl_login where UserName='" + userid + "' and Password='" + pwd + "'");
    if (rs.next())
    {
        session.setAttribute("userid", userid);
        
        response.sendRedirect("adminheader.jsp");
        
    } 
    else 
    {
    
    	%>
    	
    		<jsp:include page="adminlogin.jsp"></jsp:include>
			 <p style="color:red" align="center"> Login Failed. Please try again. </p> 
			    	
    	<%
        
    }
%>
</body>
</html>