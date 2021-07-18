package com.adm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteadminServlet
 */
@WebServlet("/deleteadminServlet")
public class deleteadminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		// Get all the names of request parameters
		String ITnumber = request.getParameter("ITnumber");
		//getting the return value for checking whether the data inserted successfully or not
		   
		   
	       boolean isTrue;
	       isTrue =  insertdbutill.deleteadmin(ITnumber);
	       
	if(isTrue==true) {
		//if data inserted to the Results table		
    RequestDispatcher dis = request.getRequestDispatcher("commen.jsp");
			
			dis.forward(request, response);
		}else {
			
			
			
		}
		
	 	
		
		
	}

	
	
	
	
}
	