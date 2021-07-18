package com.adm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/instertServlet")
public class instertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Set the response message's MIME type	

		// Get all the names of request parameters
		String ITnumber = request.getParameter("itnumber");
		String name = request.getParameter("Name");
		String  academic_year = request.getParameter("Academic_year");
	    String  subject = request.getParameter("Subject");
	    String marks = request.getParameter("Marks");
	    String  grade = request.getParameter("Grade");
	  //getting the return value for checking whether the data inserted successfully or not
		boolean isTrue;
		
		isTrue=insertdbutill.insertadmin( ITnumber,name , academic_year, subject,marks ,  grade);
		
		 if(isTrue == true) {
			//if data inserted to the Results table 
			 RequestDispatcher dis =request.getRequestDispatcher("sucess.jsp");
			 
			 dis.forward(request, response);
		 }
		 else {
			 RequestDispatcher dis2 =request.getRequestDispatcher("unsucess.jsp");
			 
			 dis2.forward(request, response);
		 }
		 
		}	
	}