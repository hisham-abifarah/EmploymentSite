package com.employmentapp.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class EmployermainpageControl extends HttpServlet
{
	  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	    throws ServletException, IOException
	  {
	  //  System.out.println("Links to employer page");
	  
	    RequestDispatcher rds = req.getRequestDispatcher("employerpage.jsp");
	    rds.forward(req, resp);
	  }
	}
