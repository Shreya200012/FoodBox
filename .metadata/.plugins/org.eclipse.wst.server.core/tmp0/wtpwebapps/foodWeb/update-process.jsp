
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/foodweb";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String product=request.getParameter("product");
String price=request.getParameter("price");
String description=request.getParameter("description");
String id=request.getParameter("id");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update items set product=?,price=?,description=?,id=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,product);
ps.setString(2,price );
ps.setString(3,description);
ps.setString(4,id);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
