package com.employmentapp.dao;

import com.employmentapp.dto.LoginBean;
import com.employmentapp.utility.DBsinglton;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDB
{
  PreparedStatement pstmt;
  ResultSet rs;
  
  public LoginBean getUsrPwd(String usr, String pwd)
  {
    System.out.println("**Login Dao Starts ");
    
    LoginBean lb = new LoginBean();
    DBsinglton.bsinglton();Connection con = DBsinglton.connection();
    
    String query = "select * from register where custid = ? and passwd=?";
    try
    {
      this.pstmt = con.prepareStatement(query);
      this.pstmt.setString(1, usr);
      
      this.pstmt.setString(2, pwd);
      
      this.rs = this.pstmt.executeQuery();
      while (this.rs.next())
      {
        System.out.println(this.rs.getString(3));
        String fnm = this.rs.getString("fname");
        String lnm = this.rs.getString("lname");
        String accno = this.rs.getString("accountno");
        System.out.println("name : " + fnm);
        lb.setFname(fnm);
        lb.setLname(lnm);
        lb.setAccno(accno);
      }
    }
    catch (SQLException e)
    {
      e.printStackTrace();
    }
    System.out.println("Login Dao ends **");
    lb.setPasswd(pwd);
    return lb;
  }
}
