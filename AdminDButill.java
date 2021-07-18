package com.adm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDButill {
       

            	private static boolean isSuccess;
	        private static Connection con= null;
	        private static Statement stmt= null;
               private static ResultSet rs = null;        

              public static boolean validate (String UserName ,String Password) {


           
    		try {
    			con= dbconnection.getConnection();
    			stmt = con.createStatement();

              String sql = "select * from login where username ='"+UserName+"' and  password= '"+Password+"'";
                   
                         rs=stmt.executeQuery(sql);
    	 



    			if(rs.next()) {
    				
    				
    				 isSuccess = true;
    			}
    			else {
    				
    				 isSuccess = false;
    			 
    				 
    			}
    	
    			}catch(Exception e) {
    				e.printStackTrace();
    			}
    				
	 
    	 return  isSuccess;
     }


	
	public static List<admin> getadmin (String UserName){
		


		ArrayList<admin> add = new ArrayList<>();



                    try {

                        con= dbconnection.getConnection();
    			stmt = con.createStatement();
                       
                      String sql = "select * from login where  username ='"+UserName+"'";

		         rs=stmt.executeQuery(sql);
		   
		         while(rs.next()) {
				
					   String  adminID=  rs.getString(1);
				            String  name=rs.getString(2);
					   String  phonenumber= rs.getString(3);
					   String  email= rs.getString(4);
					   String  username =rs.getString(5);
					   String passw=rs.getString(6);
					   
					   admin f = new admin(adminID,name,phonenumber,email,username,passw);
					   add.add(f);	
					   
					   
				   }  
				  
			}
			catch(Exception e) {
				e.printStackTrace();
				
			}
			
			return add;
			
				
		}
}