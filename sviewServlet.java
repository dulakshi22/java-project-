package com.adm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sviewServlet
 */
@WebServlet("/sviewServlet")
public class sviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// Get all the names of request parameters
		String ITnumber= request.getParameter("ITnumber");  
		//getting the return value for checking whether the data inserted successfully or not
		try {
		
		List<sview>finddet =sviewdb.validate(ITnumber);
		
		request.setAttribute("finddet", finddet);
		}
		catch(Exception e) {
		
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("sviewresults.jsp");
		 
		dis.forward(request, response);
		
		
	}

	
	
	
	
}
