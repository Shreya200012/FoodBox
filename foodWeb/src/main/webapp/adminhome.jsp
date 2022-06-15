<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  align: center;
}


.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #ff4000;}
.button4 {background-color: #808080;}
.button5 {background-color: #0066CC;}
.button6 {background-color: #8A2BE2;}
.button7 {background-color: #556B2F;}

</style>
</head>
<body>

<h1 align="center">Admin Home Page</h1>
<h3 align="center">By clicking on the various buttons below admin can perform various functionality: </h3>

<button class="button button1 " ><a href="addData.jsp">Add Data</a></button>
<button class="button button2 " ><a href="deleteData.jsp">Delete Data</button>
<button class="button button3 " ><a href="updateData.jsp">Update Data</button>
<button class="button button4 " ><a href="showData.jsp">Display Data</button>
<button class="button button5 " ><a href="userList.jsp">Manage User Data</button>
<button class="button button6 " ><a href="addImage.jsp">Add Image</button>
<button class="button button7 " ><a href="displayImage.jsp">Add Image</button>





</body>
</html>