package com.employmentapp.dao;


import com.employmentapp.dto.SearchJobsBean;
import com.employmentapp.utility.DBsinglton;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SearchJobsDB {
	
	Connection con = DBsinglton.connection();
	  Statement stmt;
	  ResultSet rs;
	  List<SearchJobsBean> jobs = new ArrayList<SearchJobsBean>();
	  
	  public List <SearchJobsBean> listjobs (String category,String location)
	    throws SQLException
	  {
	   
	    String sql = "select * from jobs where jobCategory='" + category + "' and jobLocation='"+ location + "'";
	    this.stmt = this.con.createStatement();
	    this.rs = this.stmt.executeQuery(sql);
	
	    while (rs.next()) {
	    	SearchJobsBean job = new SearchJobsBean();
	    	job.setCategory(rs.getString("jobCategory"));
	    	job.setLocation(rs.getString("jobLocation"));
         
            jobs.add(job);
        }
	  
	    return jobs;
	  }

}
