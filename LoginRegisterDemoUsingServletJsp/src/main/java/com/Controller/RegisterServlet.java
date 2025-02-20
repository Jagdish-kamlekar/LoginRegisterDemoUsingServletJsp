package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.RegisterBean;
import com.Dao.RegisterDao;


public class RegisterServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			String pass = request.getParameter("pass");
			String add = request.getParameter("add");
			
			
			RegisterBean r = new RegisterBean();
			
			r.setFname(fname);
			r.setLname(lname);
			r.setEmail(email);
			r.setMobile(mobile);;
			r.setPass(pass);
			r.setAdd(add);
			
			
			RegisterDao rd = new RegisterDao();
			
			
			int i = rd.newUser(r);
			
			PrintWriter out = response.getWriter();
			
			RequestDispatcher rd1 = request.getRequestDispatcher("./success.jsp");
			RequestDispatcher rd2 = request.getRequestDispatcher("./register.jsp");
			
			if(i>0)
			{
				out.print("<br> Register Succesfully");
				rd1.forward(request, response);
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
