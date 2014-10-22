package com.employmentapp.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.employmentapp.dao.EmployerRegisterDB;
import com.employmentapp.dto.EmployerRegisterBean;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class EmployerRegisterControl extends HttpServlet
{

	private static final long serialVersionUID = 1L;
	public EmployerRegisterDB dao;
	
	public EmployerRegisterControl()
	{
		 dao = new EmployerRegisterDB();
	}
	
	protected void doGet (HttpServletRequest req, HttpServletResponse resp)
	    throws ServletException, IOException
	  {
		EmployerRegisterBean rbc = new EmployerRegisterBean();
	    System.out.println("Links to employer register page");
	           
	    rbc.setName(req.getParameter("empname"));
	    rbc.setEmail(req.getParameter("empemail"));
	    rbc.setAddress(req.getParameter("empaddress"));
	    rbc.setPhone(req.getParameter("empphone"));
	    rbc.setCell(req.getParameter("empcell"));
	    rbc.setUsername(req.getParameter("empusername"));
	    rbc.setPasswd(req.getParameter("emppassword"));
	    
	    try {
			dao.getEmployerData(rbc);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
        
        finally{

  
        	RequestDispatcher view = req.getRequestDispatcher("emprofileadded.jsp");
             view.forward(req, resp);
        
        }
	    
	
	}
	
}
