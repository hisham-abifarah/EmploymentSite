package com.employmentapp.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.employmentapp.dao.UserUpdateDB;
import com.employmentapp.dto.LoginBean;
import com.employmentapp.dto.RegesterBean;
import com.employmentapp.utility.DBsinglton;

public class UserUpdateController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    private UserUpdateDB dao;
    
    
      PreparedStatement pstmt;
	  Connection con;
	  ResultSet rs;
	  

		 public UserUpdateController(){
			 
			 dao = new UserUpdateDB();
			 DBsinglton.bsinglton();this.con = DBsinglton.connection();
		 }
		 
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       	
			    HttpSession ses = request.getSession(false);
			    LoginBean blb = (LoginBean)ses.getAttribute("login");
			    String myusername = blb.getUsername();
			  
			    
			    RegesterBean rb = new RegesterBean();
			    
			    rb.setAddress(request.getParameter("fa"));
			    rb.setFname(request.getParameter("fn"));
			    rb.setBirthday(request.getParameter("fb"));
			    rb.setEmail(request.getParameter("fe"));
			    rb.setGender(request.getParameter("fg"));
			    rb.setPhone(request.getParameter("fp"));
			    rb.setLname(request.getParameter("fl"));
			    
			    
			    try {
					dao.getupdtSeting(myusername, rb);
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			    
			    
			    
			    
			    
		 }
		 
}
