<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyWeb</title>
<link rel="stylesheet" type="text/css" href="reg.css">
<style>
body{
background:none;
font-alignment:middle;
line-height:3em;
}
#container{
border:1px #cccc solid;
padding:0 10px 0 10px;
text:center;
width:800px;
height:900px;
margin:50px auto;
overflow:hidden
}
#Allfields-section{
   margin-left:20px;
}
#Allfields-section t{
 color:red;
}
#Alltext-section{
  padding-top:0px;
  margin-left:50px;
  color:red;
}
h1{
font-family:arial;
text-align:center;
color:purple;
}
.b t{
color:red;
text-align:center;

}
.c{
text-align:center;
}

tr:nth-child(odd) {
  background-color: #D6EEEE;
}
</style>
</head>
<body>
<div id="container">
			<h1>Welcome To Store</h1>
		<h3 >User Creation:</h3>
		<div id="Allfields-section">
		  <t>*</t>All fields are mandatory
		  <div id="Alltext-section">
		      <h4>*The following field/s are missing</h4>
		      <h4> *UserName,Password,Balance</h4>
		  </div>
		</div>
			<div class="b">
			<label>User Name<t>*</t></label>
			<input type="text" name="name" placeholder="Please enter the Username" >
			<br>
		    <label>Password<t>*</t></label>
		    <input type="text" name="password" placeholder="Please enter the Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@]).{8,}">
		    <br>
		    <label>Card type<t>*</t></label>
		    <input onclick="mycard()" type="radio" name="card">Credit
		    <input type="radio" name="card">Debit
		    <br>
		    <label>Balance</label>
		    <input type="text" name="number" placeholder="1000">
		 </div>
		 <div class="c">
		 <button style="background-color:green" type="button" >ADD</button>
		 <button style="background-color:red" type="button" >RESET</button>
		 <button style="background-color:red" onclick="mycard()" type="button" >Try</button>
		 
		<br>
		<table id="myTable" style="width:70%">
			<tr>
					<th>Name</th>
					<th>Account Type</th>
					<th>Balance/Limit</th>
			</tr>
			<tr>
			<td>Ajay</td>
			<td>Credit</td>
			<td>1000</td>
			</tr>
			<tr>
			<td>Ram</td>
			<td>Debit</td>
			<td>200</td>
			</tr>
			<tr>
			<td>Govind</td>
			<td>Debit</td>
			<td>345</td>
			</tr>
			<tr>
			<td>Hari</td>
			<td>Credit</td>
			<td>1000</td>
			</tr>
		</table>
		<script>
	function mycard() {
		  var x = document.createElement("INPUT");
		  x.setAttribute("type", "text");
		  x.setAttribute("value", "Hello World!");
		  document.body.appendChild(x);
	</script>
	</div>
	
</div>
</body>
</html>