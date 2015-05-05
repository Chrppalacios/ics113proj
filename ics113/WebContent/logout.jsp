<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Refresh" content="3;url=home.html">
<title>Insert title here</title>
</head>
<body>
	<% response.setContentType("text/html");  
              
            request.getRequestDispatcher("home member.html").include(request, response);  
              
            HttpSession sessions=request.getSession();  
            sessions.setAttribute("name", null);
            sessions.invalidate();
            response.sendRedirect("index.jsp"); %>
</body>
</html>