package com.employmentapp.dto;

public class LoginBean
{
  private String fname;
  private String lname;
  private String accno;
  private String passwd;
  
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
  
  public String getAccno()
  {
    return this.accno;
  }
  
  public void setAccno(String accno)
  {
    this.accno = accno;
  }
  
  public String getPasswd()
  {
    return this.passwd;
  }
  
  public void setPasswd(String passwd)
  {
    this.passwd = passwd;
  }
}