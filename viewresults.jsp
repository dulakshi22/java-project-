<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/stylesDisanda.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#66b3ff;">


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
<center>
<br><br><br>


<table border="7" width="40%"  length="100%">

<c:forEach var="c" items="${finddet}">

	<c:set  var="ITnumber"  value="${c.ITnumber}" />
 <c:set  var="name"  value="${c.name}" />
 <c:set  var="academic_year"   value="${c.academic_year}" />
 <c:set  var="subject"  value="${c.subject}" />
  <c:set  var="marks"  value="${c.marks}" />
   <c:set  var="grade"  value="${c.grade}" />
   
   <tr>

<th><h2>ITnumber</h2></th>
<th><h2>Name</h2></th>
<th><h2>Academic Year</h2></th>
<th><h2>Subject</h2></th>
<th><h2>Marks</h2> </th>
<th><h2>Grade</h2> </th>

</tr>

<tr>

<td><center><h2>${c.ITnumber}</h2></center></td>

<td><center><h2>${c.name}</h2></center></td>

<td><center><h2>${c.academic_year}</h2></center></td>

<td><center><h2>${c.subject}</h2></center></td>

<td><center><h2>${c.marks}</h2></center></td>

<td><center><h2>${c.grade}</h2></center></td>

 
 

	
</c:forEach>



	</table> <br> <br>
	</center>	
	
	<c:url value="updateadmin.jsp" var="adminupdates" >
	   <c:param name="ITnumber" value="${ITnumber}"/>
	   <c:param name="name" value="${name}"/>
	   <c:param name="academic_year" value="${academic_year}"/>
	   <c:param name="subject" value="${subject}"/>
	   <c:param name="marks" value="${marks}"/>
	   <c:param name="grade" value="${grade}"/>
	
	</c:url>
	
	<a href="${adminupdates}">
	<br>
	
	
		<td> <center> <input type="button"  class="addnew" name="submit" value="Update Student Profile"> </center> </a></td> <br><br>
		
		
		<c:url value="deleteadmin.jsp" var="admindelete">
  
  <c:param name="ITnumber" value="${ITnumber}"/>
	   <c:param name="name" value="${name}"/>
	   <c:param name="academic_year" value="${academic_year}"/>
	   <c:param name="subject" value="${subject}"/>
	   <c:param name="marks" value="${marks}"/>
	   <c:param name="grade" value="${grade}"/>
	   
	   
  </c:url>
    <a href="${admindelete}"> 
	<center> <input type="button" name="update" id="update" value="Delete Student Profile">  </center>
	 </a>
		
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>		



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