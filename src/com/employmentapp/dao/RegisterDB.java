package com.employmentapp.dao;



import com.employmentapp.dto.RegesterBean;
import com.employmentapp.utility.DBsinglton;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDB
{
  PreparedStatement pstmt;
  Connection con;
  
  public RegisterDB()
  { 
    DBsinglton.bsinglton();this.con = DBsinglton.connection();
  }
  
  public RegesterBean getregData(RegesterBean rb)
    throws SQLException
  {
    System.out.println("** Start of Register DAO");
    
    RegesterBean rdb = rb;
    
    String query = "insert into register values (?,?,?,?,?,?,?,?,?)";
    

    this.pstmt = this.con.prepareStatement(query);
    this.pstmt.setString(1, rdb.getFname());
    this.pstmt.setString(2, rdb.getLname());
    this.pstmt.setString(3, rdb.getAddress());
    this.pstmt.setString(4, rdb.getGender());
    this.pstmt.setString(5, rdb.getPhone());
    this.pstmt.setString(6, rdb.getPasswd());
    this.pstmt.setString(7, rdb.getEmail());
    this.pstmt.setString(8, rdb.getBirthday());
    this.pstmt.setString(9, rdb.getUsername());
   
   

  
    this.pstmt.execute();
    
    System.out.println("** End of Register DAO");
    return rdb;
  }
}
