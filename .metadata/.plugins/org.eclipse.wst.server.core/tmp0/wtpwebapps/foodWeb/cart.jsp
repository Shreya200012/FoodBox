<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!DOCTYPE html>
<html>
<head>
<title>Cart Page</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 8px;
  margin: 4px 2px;
  cursor: pointer;
}
.button3 {background-color: #f44336;} /* Red */ 
.btn-incre {
box-shadow:none;
font-size:25px;
}
.btn-decre{
box-shadow:none;
font-size:25px;
}

</style>
</head>
<body>
<script>
function myFunction() {
	  alert("Payment is Successful");
	}
</script>
<div class="container">
<div class="d-flex py-3">
<h1 align="center">Your Cart</h1>

<table id="customers">
<thead>
<tr>
<th scope="col">Name</th>
<th scope="col">Category</th>
<th scope="col">Price</th>
<th scope="col">Buy Now</th>
<th scope="col">Cancel</th>
</tr>
</thead>
<tbody>
<tr>
<td>Cottage Cheese Burger</td>
<td>Vegetarian</td>
<td>Rs.190</td>
<td>
<form action="" method="post" class="form-inline">
<input type="hidden" name="id" value="1" class="form-input">
<div class="form-group d-flex justify-content-between">
<a class="btn btn-sm btn-decre" href=" "><i class="fas fa-minus-square"></i></a>
<input type="text" name="quantity" class="form-control" value="1" readonly>
<a class="btn btn-sm btn-incre"><i class="fas fa-plus-square"></i></a>
</td>
<td>
<button class="button button3">Cancel</button>
</td>


</div>

</form>
</tr>
<tr>
<td>Crepe</td>
<td>Vegetarian</td>
<td>Rs.200</td>
<td>
<form action="" method="post" class="form-inline">
<input type="hidden" name="id" value="1" class="form-input">
<div class="form-group d-flex justify-content-between">
<a class="btn btn-sm btn-decre" href=" "><i class="fas fa-minus-square"></i></a>
<input type="text" name="quantity" class="form-control" value="2" readonly>
<a class="btn btn-sm btn-incre"><i class="fas fa-plus-square"></i></a>
</td>
<td>
<button class="button button3">Cancel</button>
</td>

</div>

</form>
</tr>
<tr>
<td>Lemonade</td>
<td>Drinks</td>
<td>Rs.120</td>
<td>
<form action="" method="post" class="form-inline">
<input type="hidden" name="id" value="1" class="form-input">
<div class="form-group d-flex justify-content-between">
<a class="btn btn-sm btn-decre" href=" "><i class="fas fa-minus-square"></i></a>
<input type="text" name="quantity" class="form-control" value="1" readonly>
<a class="btn btn-sm btn-incre"><i class="fas fa-plus-square"></i></a>
</td>
<td>
<button class="button button3">Cancel</button>
</td>


</div>

</form>
</tr>


</tbody>
</table>

<h3 align="center">Total Price: Rs.510</h3>

<a class="mx-3 btn btn-primary" href="#" align="center"><button onClick="myFunction()" align="center"><h2>Check Out</h2></button></a>
</div>



</body>