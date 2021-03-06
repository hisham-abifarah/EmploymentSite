package com.employmentapp.controller;

import java.io.IOException;
import java.io.PrintStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Logout
  extends HttpServlet
{
 
	private static final long serialVersionUID = 1L;

public void doGet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException
  {
    
    HttpSession session = req.getSession(false);
    session.invalidate();
    resp.sendRedirect("index.jsp");
  }
}