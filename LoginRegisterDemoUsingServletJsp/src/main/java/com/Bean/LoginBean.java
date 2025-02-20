package com.Bean;

public class LoginBean 
{	
	private String email;
	private String pass;
	private String mobile;

	public LoginBean() 
	{
		super();
	}

	public LoginBean(String email, String pass, String mobile) 
	{
		super();
		this.email = email;
		this.pass = pass;
		this.mobile = mobile;
	}

	public String getMobile() 
	{
		return mobile;
	}

	public void setMobile(String mobile)
	{
		this.mobile = mobile;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getPass() 
	{
		return pass;
	}

	public void setPass(String pass) 
	{
		this.pass = pass;
	}
	
	

}
