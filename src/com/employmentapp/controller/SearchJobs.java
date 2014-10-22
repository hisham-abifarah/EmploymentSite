package com.employmentapp.controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.employmentapp.dto.CVBean;
import com.employmentapp.dto.SearchJobsBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employmentapp.utility.DBsinglton;
 
public class SearchJobs extends HttpServlet {
 
 
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html");
        
        
        String myRadio= req.getParameter("myradio");
      
        String myRadio2 = req.getParameter("myradio2");
    
        String SearchCategory = req.getParameter("Searchcategory");
   
        String SearchLocation = req.getParameter("Searchlocation");
        
        String strType,strCategory,strLocation,strDuration = "";
      
        
        
        switch (myRadio) {
        case "1":
              strType = "Employee";
              break;
        case "2": 
              strType = "Intern";
              break;
        case "3": 
        	strType = "Temp/Contract/Project";
              break;
        default:
        	strType = "Employee";
              break;
      }
        
        switch (myRadio2) {
        case "1":
              strDuration = "Full-Time";
              break;
        case "2": 
              strDuration = "Part-Time";
              break;
        default:
        	strType = "Full-Time";
              break;
      }
        

        
        
        
        
        switch (SearchLocation) {											
        case "1":
        	strLocation = "Lebanon";
              break;
        case "2": 
        	strLocation = "Saudi Arabia";
              break;
        case "3": 
        	strLocation = "Iraq";
            break;
        case "4": 
        	strLocation = "Yemen";
            break;
        case "5": 
        	strLocation = "Syria";
            break;
        case "6": 
        	strLocation = "United Arab Emirates";
            break;
        case "7": 
        	strLocation = "Jordan";
            break;
        case "8": 
        	strLocation = "Oman";
            break;
        case "9": 
        	strLocation= "Kuwait";
            break;
        case "10": 
        	strLocation = "Qatar";
            break;
        case "11": 
        	strLocation = "Bahrain";
            break;
            
        default:
        	strLocation = "Lebanon";
              break;
      }
        
        
        
        switch (SearchCategory) {											
        case "1":
        	strCategory= "Accounting/Finance";
              break;
        case "2": 
        	strCategory = "Advertising/Public Relations";
              break;
        case "3": 
        	strCategory = "Architecture & Design";
            break;
        case "4": 
        	strCategory= "Arts/Entertainment/Publishing";
            break;
        case "5": 
        	strCategory = "Banking/Mortgage";
            break;
        case "6": 
        	strCategory = "Clerical/Administrative";
            break;
        case "7": 
        	strCategory = "Construction/Facilities";
            break;
        case "8": 
        	strCategory = "Consultancy";
            break;
        case "9": 
        	strCategory = "Education/Training";
            break;
        case "10": 
        	strCategory = "Engineering";
            break;
        case "11": 
        	strCategory = "Enviromental";
            break;
        case "12": 
        	strCategory = "Event Management";
            break;
        case "13": 
        	strCategory = "Government";
            break;
        case "14": 
        	strCategory = "Health Care/Pharmaceutical";
            break;
        case "15": 
        	strCategory = "Hospitality/Travel";
            break;
        case "16": 
        	strCategory = "Human Resource";
            break;
        case "17": 
        	strCategory = "Information Technology";
            break;
        case "18": 
        	strCategory = "Law Enforcement/Security";
            break;
        case "19": 
        	strCategory = "Legal";
            break;
        case "20": 
        	strCategory = "Management Consulting";
            break;
        case "21": 
        	strCategory= "Marketing";
            break;
        case "22": 
        	strCategory = "Nursing";
            break;
        case "23": 
        	strCategory = "Restaurant/Food Service";
            break;
        case "24": 
        	strCategory = "Sales-Retail";
            break;
        case "25": 
        	strCategory = "Science/Technology";
            break;
        case "26": 
        	strCategory = "Telecommunications";
            break;
            
        default:
        	strCategory = "Accounting/Finance";
              break;
      }
        
      
        System.out.println(strType + strDuration + strLocation + strCategory);
        
        
        SearchJobsBean sj = new SearchJobsBean();
     //   sj.setCategory(req.getParameter( ));
    //    sj.setDuration(req.getParameter( ));
    //    sj.setLocation(req.getParameter( ));
    //    sj.setType(req.getParameter( ));
        
        
   
        ArrayList<SearchJobsBean> users = new ArrayList<SearchJobsBean>();
        Connection con = DBsinglton.connection();
        
        PreparedStatement st;
        try {
        	
            String query = "select * from jobs where jobCategory=? and jobType=? and jobDuration=? and jobLocation=? " ;
 
            st = con.prepareStatement(query);
           st.setString(1, strCategory);
           st.setString(2, strType);
           st.setString(3, strDuration);
      st.setString(4, strLocation);
            ResultSet rs = st.executeQuery();
 
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