<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
</script>
<!-- <script src="javascript/facebook.js"> -->
<script src="javascript/jsajx.js">
</script>
<link href="css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="css/facebook.css" rel="stylesheet" type="text/css">
<style>
#background
{
background-color:#4867aa;
padding-bottom: 25px;

}
#sectxt
{
	padding-bottom: 10px;
	margin-top: 15px;
	
}

#abcd
{
	background-color:#dfe3ee;
}
#box
{
	background-color:#ffffff;
	width:700px;
	height:350px;
	margin-left: 350px;
    margin-top: 150px;
	
}

#form
{
position: fixed;
margin-left:850px;
margin-top:-100px;
}
#img
{
 position: fixed;
 margin-left:50px;
 margin-top: 25px;
}

#regform
{
  position:fixed;
  margin-left:850px;
  margin-top:5px;
}
.container
{
	width:1700px;
	

}


</style>

</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>facebook</title>
</head>
<body id="abcd">
${pageContext.request.contextPath}/WebContent/css/facebook.css



<div id="background">
	<div class="row">
	<form:form name="loginform" method="Post" action="/spring2/login" modelAttribute="loginBean">
	<div class="col-md-1"> </div>
		<div class="col-md-2">
			<font color="#ffffff" size="10" face="verdana"> Facebook</font>
		</div>
	<div class="col-md-4"> </div>
	<div class="col-md-1">
			<label  for="email"><font color="white" >Email</font></label>
	</div>
	<div class="col-md-1"></div>
	<div class="col-md-2">
			<label for="pwd"><font color="white">Password</font></label><br>
	</div>
	
</div>
<div class="row">
	<div class="col-md-7"> </div>
	<div class="col-md-2">
			<input  type="text" id="email" name="mail" data-toggle="tooltip" data-placement="top" title="Email"  style="position: absolute;margin-top:-30px;"><label id="lblemail"></label>
			<input type="checkbox"><a href="#"  >Keep Me logged in</a>
	</div>
	<div class="col-md-2">
			<input type="password"  id="pwd"  name="pwd" data-toggle="tooltip" data-placement="top" title="Password" style="position: absolute;margin-top:-30px;">
			<a href="#" >Forgotten password</a>
	 </div>
	 		<button type="submit" class="btn btn-primary"  style="position: absolute;margin-top:-35px;margin-left: -35px;">Login</button><br>
</div>
		</div>
</form:form>	
	
<div class="row">
<form:form name="submitForm" method="POST" action="/spring2/Registration" modelAttribute="userBean">
${error }
<div class="col-md-4">
	<div id="img">
	<font style="color: #000099">	<h2>Facebook helps you connect and share with the </h2><h2>pepole in your life</h2></font>
    		<img src="spring2/image/fbb.jpg" height="50%" width="90%">
   	</div>
  </div>
  </div>
 <div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-3">
	 <b><font size="6">Create an account </font><br></b><br>
   		<b><font size="4">It's free and always will be</font><br></b><br>
</div>
</div>
	
 <div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">	
 		<label id="fname" class="uname"></label><input type="text" id="uname" placeholder="First Name" size="25" maxlength="10" name="firstnane" >
			<input type="text" id="lname" placeholder="Last Name" size="25" maxlength="10" name="lastname"><br><br>
	</div>
</div>
<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">
			<label id="pheno" class="ph"></label><input type="text" id="number" placeholder="Mobile Number" size="57" maxlength="10" name="phno" ><br><br>
		</div>
</div>

<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">
 			<label id="ema" class="e"></label><input type="text" id="mail" placeholder="Email" size="57" maxlength="30"  name="mail"><br><br>
		</div>
</div>
<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-4">
			 <label id="paswd" class="pa"></label><input type="password" id="psw" placeholder="Password" size="57" maxlength="10" name="pass">
				<h2>Birthday</h2><label id="dys" class="dys"></label><br>
		</div>
</div>						
<div class="row">
	<div class="col-md-7"></div>
 		<div class="col-md-1">
 		<select id="Day" name="dy">
			<option value="">Day</option>
			 <option value="sun">1</option>
			 <option value="mon">Monday</option>
			<option value="tue">Tuesday</option>
			<option value="wed">Wednesday</option>
			<option value="thu">Thursday</option>
			 <option value="fri">Friday</option>
			 <option value="sat">Saturday</option>
			 </select>
	 </div>

 <div class="col-md-1">	
  	<select id="Month" name="mn">
	<option value="">Month</option>
	 <option value="jan">Jan</option>
	 <option value="feb">feb</option>
	<option value="march">March</option>
	<option value="april">april</option>
	<option value="may">may</option>
	 <option value="june">june</option>
	 <option value="july">july</option>
	 </select>
</div>
 	 <select id="Year" name="yr">
	<option value="">Year</option>
	<option value="90">1990</option>
	<option value="91">1991</option>
	 <option value="92">1992</option>
	 <option value="93">1993</option>
	<option value="94">1994</option>
	<option value="89">1989</option>
	 <option value="88">1988</option>
	 </select> <font size="2" color="blue">Why do I need to provide my date of birth</font>
	 </div>
	<div class="row">
 	<div class="col-md-7"></div>
 		<div class="col-md-2">
 		<input type="Radio" id="gender" value="female"> Female
 		<input type="Radio" id="gender" value="male"> Male <label id="fm" class="fm"></label> <br> 
 	</div>
	</div>
	<div class="row">
 	<div class="col-md-7"></div>
 	<div class="col-md-4">
	<font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font>
	</div>
	</div>
<div class="row">
 	<div class="col-md-7"></div>
 	<div class="col-md-4">
	<font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font> <br><hr>
</div>
</div>	
<div class="row">
 	<div class="col-md-7"></div>
 	<div class="col-md-3">	
<input type="submit"   value="Create an account" id="account" align="center" style="color:white; background-color:green;button-radius:6px">					    
</div>
</div>
</form:form>
					    
</body>
</html>