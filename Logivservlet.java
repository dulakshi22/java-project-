package com.adm;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Logivservlet")
public class Logivservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		
		// Get all the names of request parameters
		
		String UserName = request.getParameter("UserName");
		String Password= request.getParameter(" password");
		
		//getting the return value for checking whether the data inserted successfully or not
		 // Retrieve the value of the query parameter "Username"
		// Retrieve the value of the query parameter "password" 
		
               boolean IsTrue;
		 
		IsTrue=AdminDButill.validate(UserName, Password);
		
		if(IsTrue == true) {
			
			List<admin>finddet =AdminDButill.getadmin(UserName);
			
			request.setAttribute("finddet", finddet);
		
		
		      RequestDispatcher dis = request.getRequestDispatcher("find.jsp");
		
		    dis.forward(request, response);
		
		}
		else{
			
			
			out.println("<script type='text/javascript'>");
			out.println("alert('your user name or password incorrect'); ");
			out.println("location='Login.jsp'");
			out.println("</script>");
			
			
		}
		
			
		
	}
}