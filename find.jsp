<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/find.css">
<link rel="stylesheet" type="text/css" href="css/stylesDisanda.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body  style="background-image: url(Images/b.jpg);background-size:1400px 800px;">


   
    <div class="menu">
    <li class="menu"><a href="#">Home</a></li>
    <li class="menu"><a href="">Results</a></li>
    <li class="menu"><a href="">Exams</a></li>
   
    <li class="menu"><a href="">Time Tables</a></li>
     <li class="menu"><a href="Contact us.html">Feedback</a></li>
     <div class="search"> 
           
               
                
                    
                
           
        </div>  
</div>
<hr id="test"/>
 <center>
<table border="7" width="40%"  length="100%">

<c:forEach var="c" items="${finddet}">
<tr>
		<td><h2>AdminID</h2> </td>
		<td><h2>${c.adminID }</h2></td>
	</tr>
	<tr>
		<td><h2>name</h2></td>
		<td><h2>${c.name }</h2></td>
	</tr>
	<tr>
		<td><h2>phonenumber</h2></td>
		<td><h2>${c.phonenumber }</h2></td>
	</tr>
	<tr>
		<td><h2>email</h2></td>
		<td><h2>${c.email}</h2></td>
	</tr>
	<tr>
		<td><h2>username</h2></td>
		<td><h2>${c.username}</h2></td>
	</tr>
	<tr>
		<td><h2>password</h2></td>
		<td><h2>${c.password }</h2></td>
	</tr>
	
	<tr>
	   <td>    
	        <a href="adminlogin.jsp"> <input type="submit"  class="submit" name="submit" value="System Login"></a>
	   </td>
	</tr>
	
</c:forEach>

</table>
 </center>

<hr id="test"/>
<a href ="www.facebook.com" id = "footer_link"><img id="footer_logo" src="Images/fb logo.png" width="30" height="30" alt="logo"></a>

<a href ="www.twitter.com" id = "footer_link"><img id="footer_logo" src="Images/twitter.jpg" width="30" height="30" alt="logo"></a>

<a href ="www.instagram.com" id = "footer_link"><img id="footer_logo" src="Images/insta.png" width="30" height="30" alt="logo"></a>

<a href ="www.googleplus.com" id = "footer_link"><img id="footer_logo" src="Images/g+ logo.png" width="30" height="30" alt="logo"></a>

<h4 id="footer">
Contact us:
<br/>
Tele : 0112314752
<br/>
E - mail - support@gmail.com</h4>

<br/><br/>
<center>
<h6>All Rights Reserved</h6>
</center>

</body>
<br>
<br>
<br>
</br>


</html>