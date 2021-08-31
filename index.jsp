<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyWeb</title>
<link rel="stylesheet" type="text/css" href="reg.css">
<script>
function myFunction() {
	  var Credit = document.getElementById("myCheck");
	  var text = document.getElementById("text");
	  if (Credit.checked == true){
	    text.style.display = "block";
	  } else {
	     text.style.display = "none";
	  }
	 }
	 function myfunction() {
	  var Debit = document.getElementById("myCheck1");
	  var text = document.getElementById("text1");
	  if (Debit.checked == true){
	    text.style.display = "block";
	  } else {
	     text.style.display = "none";
	  }
	 }
</script>
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
width:500px;
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
h1{
font-family:arial;
text-align:center;
color:purple;
}
.b  {
font-size:25px;
text-align:auto;
border-left:50px;
text-align:center;
padding-left:30px;

}
.c{
text-align:center;
font-size:30px;
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
		  </div>
			<div class="b">
			<label>Username<t style="color:red">*</t></label>
			<input style="height:35px;border-radius:10px" type="text" name="name" placeholder="Please enter the Username" >
			<br>
		    <label>Password<t style="color:red">*</t></label>
		    <input style="height:35px;border-radius:10px" type="text" name="password" placeholder="Please enter the Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@]).{8,}">
		    <br>
		    <label for="myCheck">Card type:</label> 
             <input type="radio" id="myCheck" onclick="myFunction()">Credit</input>
             <input type="radio" id="myCheck1" onclick="myfunction()">Debit</input>
              <label for="myCheck"></label> 
               <input id="text" placeholder="1000"style="display:none;height:30px;border-radius:10px"></input>
              <label for="myCheck1"></label> 
              <input id="text1" placeholder="enter"style="display:none;height:30px;border-radius:10px;text-align:center"></input>
		    </div>
		 <div class="c">
		 <button style="background-color:skyblue;font-size:30px;border-radius:10px" type="button" >ADD</button>
		 <button style="background-color:lightgreen;font-size:30px;border-radius:10px" type="button" >RESET</button>
		</div><br>
		<div>
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
	</div>
</div>
</body>
</html>