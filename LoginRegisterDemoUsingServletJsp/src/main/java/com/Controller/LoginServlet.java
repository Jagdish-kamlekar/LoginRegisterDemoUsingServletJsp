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

import com.Bean.LoginBean;
import com.Dao.LoginDao;

public class LoginServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() 
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
			String email = request.getParameter("email");
			String pass=request.getParameter("pass");
			
			LoginBean lobj = new LoginBean();
			lobj.setEmail(email);
			lobj.setMobile(email);
			lobj.setPass(pass);
			
			LoginDao lobj1 = new LoginDao();
			
			HttpSession session=request.getSession();  
	         session.setAttribute("email",email);
			
			
			String res = lobj1.Userauthentication(lobj);
			
			PrintWriter out = response.getWriter();
			
			RequestDispatcher rd1 = request.getRequestDispatcher("./home.jsp");
			RequestDispatcher rd2 = request.getRequestDispatcher("./login.jsp");
			
			if("success".equals(res))
			{
				rd1.forward(request, response);
			}
			else
			{
				out.print(" <br>"+res);
				rd2.include(request, response);
			}
			
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
