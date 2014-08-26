package com.employmentapp.service;

import com.employmentapp.dao.LoginDB;
import com.employmentapp.dto.LoginBean;
import java.io.PrintStream;

public class LoginService
{
  public LoginBean getUserPwd(String custid, String pswd)
  {
    System.out.println("** Login Service");
    
    LoginBean lbs = new LoginDB().getUsrPwd(custid, pswd);
    System.out.println("Login Service **");
    
    return lbs;
  }
}
