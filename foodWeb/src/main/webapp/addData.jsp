<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=textarea] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
</style>
</head>
<body>
<h2>Enter the details of the new Cuisines  to be added: </h2>
<form action="AddData">
<p>Product: <p>
<input type="text" name="product">
<p>Price<p>
<input type="text" name="price">
<p>Description:</p>
<textarea  rows="3" cols="21" name="description"></textarea>
<p>ID:</p>
<input type="number" name="id">
<br>
<br>
<input type="submit">
</form>
</body>
</html>