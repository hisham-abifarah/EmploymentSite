package com.employmentapp.controller;

import com.employmentapp.dto.RegesterBean;
import com.employmentapp.dto.StateBean;
import com.employmentapp.service.RegistService;
import com.employmentapp.service.StateService;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterController
  extends HttpServlet
{

	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException
  {
    System.out.println("* Start Register Controller");
   
  }

}
