package com.employmentapp.controller;


import com.employmentapp.dto.EmployerLoginBean;
import com.employmentapp.service.EmployerLoginService;


import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmployerLoginServlet
  extends HttpServlet
{

	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException
  {
    System.out.println("**Login Controller");
    resp.setContentType("text/html");
    String custid = req.getParameter("web_un").trim();
    String pswd = req.getParameter("web_pass");
    if ("".equals(custid))
    {
      req.setAttribute("emtkey", "yes");
      RequestDispatcher rd = req.getRequestDispatcher("employerpage.jsp");
      rd.forward(req, resp);
    }
    else
    {
      EmployerLoginBean lbc = null;
      lbc = new EmployerLoginService().getUserPwd(custid, pswd);
      if (lbc.getUsername() != null)
      {
        HttpSession session = req.getSession(true);
        
        session.setAttribute("login", lbc);
        RequestDispatcher rdl = req.getRequestDispatcher("employerhome.jsp");
        rdl.forward(req, resp);
      }
      else
      {
        req.setAttribute("emtkey", "yes");
        RequestDispatcher rd = req.getRequestDispatcher("employerpage.jsp");
        rd.forward(req, resp);
      }
      System.out.println("**Login Controller Ends");
    }
  }
  
  public void doGet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException
  {
    System.out.println("### home ###");
    RequestDispatcher rdl = req.getRequestDispatcher("employerhome.jsp");
    rdl.forward(req, resp);
  }
}
