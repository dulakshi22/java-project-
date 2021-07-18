package com.adm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class viewdb {

public static List<view>validate(String ITnumber )
	
	{
		ArrayList<view>fin = new ArrayList<>();
		
		

		 String  url = "jdbc:mysql://localhost:3306/admin";
		 String username= "root";
		  String  Password="Dulakshi";
		
		try {
			
			  Class.forName("com.mysql.jdbc.Driver");

			   Connection con =DriverManager.getConnection(url,username,Password);
			  
			   Statement stmt = con.createStatement();
			   String sql = "select * from results where  ITnumber= '"+ITnumber+"'";
			
			   ResultSet  rs = stmt.executeQuery(sql);
			   
			   if(rs.next()) {
				   
				   String  iTnumber=  rs.getString(1);
				   String  name=rs.getString(2);
				   String  academic_year= rs.getString(3);
				   String  subject= rs.getString(4);
				   String  marks=rs.getString(5);
				   String grade=rs.getString(6);
				   
				   
				   view f = new view(iTnumber,name,academic_year,subject,marks,grade);
				   fin.add(f);		   
			   
			   }  
			  
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return fin;
		
		
		
		
	}
	
	

}
