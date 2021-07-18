<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/stylesDisanda.css">
  <link rel="stylesheet" href="css/main.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#ffcc99;">


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

<%
  
       String ITnumber= request.getParameter("ITnumber");
       String name = request.getParameter("name");  
       String academic_year = request.getParameter("academic_year");
       String subject= request.getParameter("subject");
       String marks= request.getParameter("marks");
       String grade= request.getParameter("grade");
    
       %>
       
       <form action="det" method="post">

    


<center>
<div class="login">

  <div id="container">
    <div class="form-wrap">
      <h1>DELETE RESULT</h1>
     
     <form action="insert" method="post" >
        <div class="form-group">
          <label for="IT Number">IT Number</label>
          <input type="text" name="ITnumber" value="<%=ITnumber %>" readonly>
        </div>
        <div class="form-group">
          <label for="Name"> Name</label>
         <input type="text" name="name" value="<%=name %>" readonly>
        </div>
        <div class="form-group">
          <label for="Academic Year">Academic Year</label>
          <input type="text" Name="academic_year" value="<%=academic_year%>" readonly>
        </div>
        <div class="form-group">
          <label for="Subject">Subject</label>
         <input type="text" name="subject" value="<%=subject%>" readonly>
        </div>
        <div class="form-group">
          <label for="Marks">Marks</label>
          <input type="text" name="marks" value="<%=marks%>" readonly>
        </div>
         <div class="form-group">
          <label for="Grade">Grade</label>
          <input type="text" name="grade" value="<%=grade %>" readonly>
        </div>
        <button type="submit" class="btn">Delete This Marks</button>
        
      </form>
    </div>
    
  </div>

</center>



    <br>  
    
   <br><br><br><br><br><br><br><br><br><br><br>
    
 
<hr id="test"/>
<a href ="www.facebook.com" id = "footer_link"><img  src="Images/fb logo.png" width="30" height="30" alt="logo"></a>

<a href ="www.twitter.com" id = "footer_link"><img  src="Images/twitter.jpg" width="30" height="30" alt="logo"></a>

<a href ="www.instagram.com" id = "footer_link"><img  src="Images/insta.png" width="30" height="30" alt="logo"></a>

<a href ="www.googleplus.com" id = "footer_link"><img  src="Images/g+ logo.png" width="30" height="30" alt="logo"></a>

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