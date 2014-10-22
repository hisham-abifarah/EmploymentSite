package com.employmentapp.dao;

import java.sql.SQLException;

import com.employmentapp.dto.RegesterBean;
import com.employmentapp.utility.DBsinglton;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class UserUpdateDB {
	
	
	  java.sql.Connection con;
	  Statement stmt;
	  
	  public UserUpdateDB()
	  {
	    DBsinglton.bsinglton();this.con = DBsinglton.connection();
	  }
	  
	  
	  public void getupdtSeting(String usrname, RegesterBean usb)
	    throws SQLException
	  {
	    String qury = "\tupdate register set fname='" + usb.getFname() + "'," + 
	      "address='" + usb.getAddress() + "'," + 
	      "passwd='" + usb.getPasswd() + "'," + 
	      "email='" + usb.getEmail() + "'," + 
	      "phone='" + usb.getPhone() + "'" + 
	      "where username ='" + usrname + "'";
	    
	   this.stmt = (Statement) con.createStatement();
	   this.stmt.executeUpdate(qury);
	  }
	}

	  

