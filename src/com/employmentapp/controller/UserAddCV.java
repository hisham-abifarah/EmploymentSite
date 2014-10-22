package com.employmentapp.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import com.employmentapp.dao.CheckUsernameCV;
import com.employmentapp.dao.InsertCVDB;
import com.employmentapp.dto.CVBean;
import com.employmentapp.dto.LoginBean;
import com.employmentapp.dto.RegesterBean;
import com.employmentapp.utility.DBsinglton;




public class UserAddCV extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    private InsertCVDB dao;
    private CheckUsernameCV daocheck;
    
      PreparedStatement pstmt;
	  Connection con;
	  ResultSet rs;
    
	
	
		 public UserAddCV(){
			 
			 dao = new InsertCVDB();
			 DBsinglton.bsinglton();this.con = DBsinglton.connection();
		 }
		 
		
		 
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       	
			    HttpSession ses = request.getSession(false);
			    LoginBean blb = (LoginBean)ses.getAttribute("login");
			    String myusername = blb.getUsername();
			  
			 	CVBean cv = new CVBean();
		        cv.setCv(request.getParameter("cvontent"));
		      	      
	            try {
	            	
	            	  String query = "Select CVUsername from cvtable where CVUsername = ?";	
	      		      this.pstmt = this.con.prepareStatement(query);
	      		      this.pstmt.setString(1, myusername);
	      		      rs = this.pstmt.executeQuery();
	      		      if (rs.next())
	      		      {
	      		        System.out.println("cv for" + myusername +"exists");
	      		      
	      		      }
	      		  
	      		      else
	      		      {
	      		    	  
	      		    	  dao.getCVData(myusername, cv);
	      		      }
	            	
	           
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
	            
	            finally{

	         // System.out.println("before view redirect");
		        RequestDispatcher view = request.getRequestDispatcher("cvadded.jsp");
		        view.forward(request, response);
		        
	            }
		 
		        }
		 
		 
		 
}
	

		
	

