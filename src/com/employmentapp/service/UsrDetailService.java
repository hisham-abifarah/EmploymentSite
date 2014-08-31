package com.employmentapp.service;



import com.employmentapp.dao.UserDetailDB;
import com.employmentapp.dto.RegesterBean;
import java.sql.SQLException;

public class UsrDetailService
{
  public RegesterBean getUsrAccno(String accno)
    throws SQLException
  {
    RegesterBean rb = new RegesterBean();
    rb = new UserDetailDB().getAccno(accno);
    return rb;
  }
}
