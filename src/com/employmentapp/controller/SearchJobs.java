package com.employmentapp.controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.employmentapp.dto.SearchJobsBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employmentapp.utility.DBsinglton;
 
public class SearchJobs extends HttpServlet {
 
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html");
   
        ArrayList<SearchJobsBean> users = new ArrayList<SearchJobsBean>();
        Connection con = DBsinglton.connection();
        
        Statement st;
        try {
        	
            String query = "select * from jobs";
 
            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
 
            while (rs.next()) {
            	SearchJobsBean user = new SearchJobsBean();
             
                user.setCategory(rs.getString("jobCategory"));
                user.setType(rs.getString("jobType"));
                user.setDuration(rs.getString("jobDuration"));
                user.setLocation(rs.getString("jobLocation"));
                
                users.add(user);
            }
            req.setAttribute("users", users);
            RequestDispatcher view = req.getRequestDispatcher("viewsearch.jsp");
            view.forward(req, resp);
        
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 

}