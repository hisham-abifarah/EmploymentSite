package com.employmentapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.employmentapp.utility.DBsinglton;

public class CheckUsernameCV {
	
	  PreparedStatement pstmt;
	  Connection con;
	  ResultSet rs;
	
	  
	  public CheckUsernameCV()
	  { 
	    DBsinglton.bsinglton();this.con = DBsinglton.connection();
	  }
	  
	  public boolean getCVusername(String usr)
	    throws SQLException
	  
	  {
		 
		  String query = "Select CVUsername from cvtable where CVUsername = ?";
		  
		  try
		    {
		      this.pstmt = this.con.prepareStatement(query);
		      this.pstmt.setString(1, usr);
		      rs = this.pstmt.executeQuery();
		      if (rs.next())
		      {
		        return true;
		      
		      }
		    }
		    catch (SQLException e)
		    {
		      e.printStackTrace();
		    }
		return false;
		  
	  }
	
	
	
	

}
