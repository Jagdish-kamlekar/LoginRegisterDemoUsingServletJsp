package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.RegisterBean;
import com.Dao.RegisterDao;

public class PersonalServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public PersonalServlet() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		//HTML Structure
		PrintWriter out = response.getWriter();
		try 
		{
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			
			
			RegisterBean r = new RegisterBean();
			
			
			r.setEmail(email);
			r.setMobile(mobile);;
			
			HttpSession session=request.getSession(false);  
	        String n=(String)session.getAttribute("email");  
	        
			
			
			
			RegisterDao rd = new RegisterDao();
			
			
			int i = rd.newUser(r);
			
			
			
			RequestDispatcher rd1 = request.getRequestDispatcher("./success.jsp");
			RequestDispatcher rd2 = request.getRequestDispatcher("./register.jsp");
			
			if(i>0)
			{
				out.print("<br> Register Succesfully");
				rd1.forward(request, response);
				out.print("Hello "+n); 
			}
			else
			{
				out.print("Record Denied..");
				rd2.include(request, response);
			}
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}

}
