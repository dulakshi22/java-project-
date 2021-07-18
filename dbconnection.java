package com.adm;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {

	// JDBC driver name and database URL
	private static String  url = "jdbc:mysql://localhost:3306/admin";
	
	
	// Database credentials
	 private static String username= "root";
	 private static String  password="Dulakshi";
	
	 private static Connection con;
	 
	 
	  public static Connection getConnection() {
		  
		  try {
			  //Open a connection
			  Class.forName("com.mysql.jdbc.Driver");
			  con = DriverManager.getConnection(url,username,password);
		  }
	
		  catch(Exception e) {
			  System.out.println("database connection is not vaild");
		  }
		  
		  
		  return con;
		  
	  }


		
		
	}
