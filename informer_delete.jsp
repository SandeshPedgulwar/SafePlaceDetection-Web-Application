<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
<%@page import="com.connection.*" %>
<%@page import="com.services.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String id=request.getParameter("id");

try
{
	Connection con=ConnectionDB.connect();
	PreparedStatement ps=con.prepareStatement("delete from informer_info where email=?");
	ps.setString(1,id);
	int res=ps.executeUpdate();
	if(res>0)
	{
		response.sendRedirect("view_informer_info.jsp");
	}
	else
	{
		response.sendRedirect("404.html");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>



</body>
</html>