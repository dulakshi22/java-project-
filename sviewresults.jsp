<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/stylesDisanda.css">
<body style="background-color:#ffe6e6;">



    <div class="menu">
    <li class="menu"><a href="#">Home</a></li>
    <li class="menu"><a href="StudentFind.jsp">Results</a></li>
    <li class="menu"><a href="">Exams</a></li>
   
    <li class="menu"><a href="">Time Tables</a></li>
     <li class="menu"><a href="Contact us.html">Feedback</a></li>
     <div class="search"> 
           
               
                 
                    
                
           
        </div>  
</div>
<hr id="test"/>
<br><br><br>

<center> <h1><span style = 'color:red'> Result! </span></h1></center><br><br>
<center>

<table border="7" width="40%"  length="100%">

<c:forEach var="c" items="${finddet}">

	<c:set  var="ITnumber"  value="${c.ITnumber}" />
 <c:set  var="name"  value="${c.name}" />
 <c:set  var="academic_year"   value="${c.academic_year}" />
 <c:set  var="subject"  value="${c.subject}" />
  <c:set  var="marks"  value="${c.marks}" />
   <c:set  var="grade"  value="${c.grade}" />
   
   <tr>

<th><h3>IT number</h3></th>
<th><h3>Name</h3></th>
<th><h3>Academic Year</h3></th>
<th><h3>Subject</h3></th>
<th><h3>Marks</h3> </th>
<th><h3>Grade</h3> </th>

</tr>

<tr>

<td><center><h2>${c.ITnumber}</h2></center></td>

<td><center><h2>${c.name}</h2></center></td>

<td><center><h2>${c.academic_year}</h2></center></td>

<td><center><h2>${c.subject}</h2></center></td>

<td><center><h2>${c.marks}</h2></center></td>

<td><center><h2>${c.grade}</h2></center></td>

 
 

	
</c:forEach>



	</table>
	</center>
	
	
	<br><br><br><br><br><br><br><br><br><br>

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
</html>