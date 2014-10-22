package com.employmentapp.service;

import com.employmentapp.dao.EmployerLoginDB;
import com.employmentapp.dto.EmployerLoginBean;


public class EmployerLoginService {
	
	  public EmployerLoginBean getUserPwd(String custid, String pswd)
	  {
	    System.out.println("** Login Service");
	    
	    EmployerLoginBean lbs = new EmployerLoginDB().getEmpUsrPwd(custid, pswd);
	    System.out.println("Login Service **");
	    
	    return lbs;
	  }

}
