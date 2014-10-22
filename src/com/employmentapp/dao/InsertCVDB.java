package com.employmentapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.employmentapp.dto.CVBean;
import com.employmentapp.dto.LoginBean;
import com.employmentapp.dto.RegesterBean;
import com.employmentapp.utility.DBsinglton;

public class InsertCVDB {
	
	  PreparedStatement pstmt;
	  Connection con;
	
	  
	  public InsertCVDB()
	  { 
	    DBsinglton.bsinglton();this.con = DBsinglton.connection();
	  }
	  
	  public void getCVData(String usr, CVBean rb)
	    throws SQLException
	  
	  {
	    System.out.println("** Start of insert cv DAO");
	    
	    String query = "insert into cvtable values (?,?)";
	    
	    System.out.println("username cv:" + usr);
	    pstmt = con.prepareStatement(query);
	    
	    pstmt.setString(1, usr); 
	    pstmt.setString(2, rb.getCv());
	    pstmt.execute();
	      
	  }

}
