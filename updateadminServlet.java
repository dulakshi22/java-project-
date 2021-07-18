package com.adm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateadminServlet")
public class updateadminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Set the response message's MIME type
             PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		
		// Get all the names of request parameters
		String ITnumber = request.getParameter("ITnumber");
		String name = request.getParameter("name");
		String  academic_year = request.getParameter("academic_year");
	    String  subject = request.getParameter("subject");
	    String marks = request.getParameter("marks");
	    String  grade = request.getParameter("grade");
	  //getting the return value for checking whether the data inserted successfully or not
		
		
		boolean isTrue;
		
		
		isTrue= insertdbutill.updateadmin(ITnumber,name, academic_year, subject,marks,grade);
		//if data inserted to the Results table
		if(isTrue == true) {
			
                     out.println("<script type='text/javascript'>");
		      out.println("alert('!!successfully update your profile!!'); ");
		      out.println("location='sucess.jsp'");
		      out.println("</script>");
	 

			
	
		

		} else {
                         out.println("<script type='text/javascript'>");
		out.println("alert('!!fail update!!'); ");
		out.println("location='uncuess.jsp'");
		out.println("</script>");


		
	}

	}
}