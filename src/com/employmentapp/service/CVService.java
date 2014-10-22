package com.employmentapp.service;

import java.sql.SQLException;

import com.employmentapp.dao.InsertCVDB;
import com.employmentapp.dto.CVBean;


public class CVService {
	
	public CVBean getRegister(CVBean rbc)
		    throws SQLException
		  {
		    System.out.println("++++++++++++++++++Register Service ++++++++++++ ");
		    CVBean rb = rbc;
		    	 
		
		    System.out.println("++++++++++++++++++Register Service Ends ++++++++++++ ");
		    return rb;
		  }
		  
		
}
