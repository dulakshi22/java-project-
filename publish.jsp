<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/stylesDisanda.css">
  <link rel="stylesheet" href="css/main.css">

<title>Insert title here</title>
</head>
<body style="background-color:#004080;">

<div class="menu">
    <li class="menu"><a href="#">Home</a></li>
    <li class="menu"><a href="">Results</a></li>
    <li class="menu"><a href="">Exams</a></li>
    
    <li class="menu"><a href="">Time Tables</a></li>
     <li class="menu"><a href="Contact us.html">Feedback</a></li>
   
</div>
<hr id="test"/>
<center>
<div class="login">

  <div id="container">
    <div class="form-wrap">
      <h1>Results Publishing Portral</h1>
     
     <form action="insert" method="post" >
        <div class="form-group">
          <label for="IT Number">IT Number</label>
          <input type="text" name="itnumber" id="first-name"    placeholder="IT***"/>
        </div>
        <div class="form-group">
          <label for="Name"> Name</label>
          <input type="text" name="Name" id="name" />
        </div>
        <div class="form-group">
          <label for="Academic Year">Academic Year</label>
          <input type="text" name="Academic_year" id="Academic_year" />
        </div>
        <div class="form-group">
          <label for="Subject">Subject</label>
          <input type="text" name="Subject" id="Subject" />
        </div>
        <div class="form-group">
          <label for="Marks">Marks</label>
          <input type="text" name="Marks" id="Marks" />
        </div>
         <div class="form-group">
          <label for="Grade">Grade</label>
          <input type="text" name="Grade" id="Grade" />
        </div>
        <button type="submit" class="btn">Publish</button>
        
      </form>
    </div>
    
  </div>

</center>
<br>


<hr id="test"/>
<a href ="www.facebook.com" id = "footer_link"><img src="Images/fb logo.png" width="30" height="30" alt="logo"></a>

<a href ="www.twitter.com" id = "footer_link"><img src="Images/twitter.jpg" width="30" height="30" alt="logo"></a>

<a href ="www.instagram.com" id = "footer_link"><img  src="Images/insta.png" width="30" height="30" alt="logo"></a>

<a href ="www.googleplus.com" id = "footer_link"><img src="Images/g+ logo.png" width="30" height="30" alt="logo"></a>

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