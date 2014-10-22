package com.employmentapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.employmentapp.dto.EmployerRegisterBean;
import com.employmentapp.utility.DBsinglton;

public class EmployerRegisterDB {
	
	  PreparedStatement pstmt;
	  Connection con;
	  
	  public EmployerRegisterDB()
	  {
	    DBsinglton.bsinglton();this.con = DBsinglton.connection();
	  }
	  
	  public void getEmployerData (EmployerRegisterBean rb)
	    throws SQLException
	  {
	    System.out.println("** Start of employer Register DAO");
	    
	    EmployerRegisterBean rdb = rb;
	    
	    String query = "insert into employer values (?,?,?,?,?,?,?)";
	    

	    this.pstmt = this.con.prepareStatement(query);
	  
	    this.pstmt.setString(1, rdb.getName());
	    this.pstmt.setString(2, rdb.getEmail());
	    this.pstmt.setString(3, rdb.getAddress());
	    this.pstmt.setString(4, rdb.getCell());
	    this.pstmt.setString(5, rdb.getUsername());
	    this.pstmt.setString(6, rdb.getPasswd());
	    this.pstmt.setString(7, rdb.getPhone());
	    
	    System.out.println(rdb.getName());
	    System.out.println("username" + rdb.getUsername());
	    System.out.println(rdb.getPasswd());
	    
	   
	    this.pstmt.execute();
	    
	    System.out.println("** End of employer Register DAO");
	 

}

	  
}