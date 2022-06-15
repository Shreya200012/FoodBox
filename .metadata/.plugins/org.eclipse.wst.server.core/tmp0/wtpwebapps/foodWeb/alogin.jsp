<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
	String username = request.getParameter("uname");
	String password = request.getParameter("psw");
	if((username.equals("admin") && password.equals("admin"))){
		response.sendRedirect("adminhome.jsp");
	}else{
		out.println("invalid id and pwd");
	}
	
	
	%>
</body>
</html>