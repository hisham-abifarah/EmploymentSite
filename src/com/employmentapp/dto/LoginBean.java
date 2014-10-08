package com.employmentapp.dto;

public class LoginBean
{
  private String fname;
  private String lname;
  private String passwd;
  private String usernam;
  
  public String getFname()
  {
    return this.fname;
  }
  
  public void setFname(String fname)
  {
    this.fname = fname;
  }
  
  public String getLname()
  {
    return this.lname;
  }
  
  public void setLname(String lname)
  {
    this.lname = lname;
  }
  
  public String getPasswd()
  {
    return this.passwd;
  }
  
  public void setPasswd(String passwd)
  {
    this.passwd = passwd;
  }
  
  public String getUsername()
  {
    return this.usernam;
  }
  
  public void setUsername(String username1)
  {
    this.usernam = username1;
  }
}