package com.Bean;

public class RegisterBean 
{
	String fname;
	String lname;
	String email;
	String mobile;
	String pass;
	String add;
	
	public RegisterBean() 
	{
		super();
	}

	public RegisterBean(String fname, String lname, String email, String mobile, String pass, String add)
	{
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.mobile = mobile;
		this.pass = pass;
		this.add = add;
	}

	public String getFname() 
	{
		return fname;
	}

	public void setFname(String fname) 
	{
		this.fname = fname;
	}

	public String getLname() 
	{
		return lname;
	}

	public void setLname(String lname) 
	{
		this.lname = lname;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getMobile() 
	{
		return mobile;
	}

	public void setMobile(String mobile) 
	{
		this.mobile = mobile;
	}

	public String getPass() 
	{
		return pass;
	}

	public void setPass(String pass) 
	{
		this.pass = pass;
	}
	
	public String getAdd() 
	{
		return add;
	}

	public void setAdd(String add) 
	{
		this.add = add;
	}
	
}
