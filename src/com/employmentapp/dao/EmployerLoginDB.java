package com.employmentapp.dao;

import com.employmentapp.dto.EmployerLoginBean;
import com.employmentapp.utility.DBsinglton;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployerLoginDB
{
  PreparedStatement pstmt;
  ResultSet rs;
  
  public EmployerLoginBean getEmpUsrPwd(String usr, String pwd)
  {
    System.out.println("**Login Dao Starts ");
    
    EmployerLoginBean lb = new EmployerLoginBean ();
    DBsinglton.bsinglton();Connection con = DBsinglton.connection();
    
    String query = "select * from employer where empusername = ? and emppassword=?";
    try
    {
      this.pstmt = con.prepareStatement(query);
     
      this.pstmt.setString(1, usr);
      this.pstmt.setString(2, pwd);
      
      this.rs = this.pstmt.executeQuery();
      while (this.rs.next())
      {
            
        String usern = this.rs.getString("empusername");
        
        lb.setUsername(usern);
      
      }
    }
    catch (SQLException e)
    {
      e.printStackTrace();
    }
    System.out.println("Login Dao ends **");
    lb.setPassword(pwd);
    return lb;
  }
}
