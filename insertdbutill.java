package com.adm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class insertdbutill {

	private static boolean isSuccess;
	 private static Connection con= null;
	 private static Statement stmt= null;
	 private static ResultSet rs = null;
   
    
    
    public static boolean insertadmin(String ITnumber , String name, String academic_year, String subject,String marks ,String grade) {
    
    
    boolean isSuccess=false;
    
try {
		
		con= dbconnection.getConnection();
		stmt = con.createStatement();
		
		
		
String sql= "insert into results  values('"+ITnumber+"' ,'"+ name+"' , '"+academic_year+"' , '"+subject+"' , '"+marks+"' , '"+grade+"' )";
		
		int rs = stmt.executeUpdate(sql);
		
		
if(rs>0) {
			
			isSuccess= true;
			
			
		}else {
			isSuccess=false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();	
		
	}
	
	
	return isSuccess;
    }

	
public static boolean updateadmin(String ITnumber,String name,String academic_year,String subject , String marks,String grade) {
    	
    	try {
    		
    		con= dbconnection.getConnection();
			stmt = con.createStatement();
    		
			String sql= "update results set  name='"+name+"' ,academic_year='"+academic_year+"',subject='"+subject+"',marks='"+marks+"', grade='"+grade+"' " +"where ITnumber='"+ITnumber+"'";
			int rs = stmt.executeUpdate(sql);

			if(rs>0) {
				
				isSuccess= true;
				
				
			}else {
				isSuccess=false;
			}
			
			
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	
    	
    	
    	
    	return isSuccess;
}
		
    	
    	
    	public static boolean deleteadmin(String ITnumber ) {
    		   
    		   
    		   
    		   try {
    			   
    			   con= dbconnection.getConnection();
    			    stmt = con.createStatement();
    				
    			    String sql = "delete from results where ITnumber= '"+ITnumber+"'";
    			    
    			    int rs = stmt.executeUpdate(sql);
    				
    			     
    			     if(rs>0) {
    					
    					isSuccess= true;
    					
    					
    				}else {
    					isSuccess=false;
    				}
    				
    				
    				
    			   
    		   }
    		   catch(Exception e) {
    			   
    			   e.printStackTrace();
    		   }
    		   
    	   
    		   return isSuccess;
    		   
    		  
    		   
    	   }
    	    



    	}