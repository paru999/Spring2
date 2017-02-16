package com.spring;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Beans.*;
import com.DBconnection.DB_insert1;

@Controller
public class logincontroller
{
	/*@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("loginBean") loginBean loginBean)
{
	
	//System.out.println(loginBean.getMail());

	if (loginBean != null && loginBean.getMail()  != null & loginBean.getPwd() != null)
	{
		if (loginBean.getMail() .equals("abc@gmail.com") && loginBean.getPwd().equals("appu123"))
			
			{
			model.addAttribute("msg", loginBean.getMail() );
						return "hello";
			} 
		
		else 
			{
			model.addAttribute("error", "Invalid Details");
			return "hello2";
			}
		
			} 
			else
			{
			model.addAttribute("error", "Please enter Details");
			return "hello2";
			}
	
		}*/
	
	@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("loginBean") loginBean loginBean) throws SQLException
{
	
	 DB_insert1 obj =new DB_insert1();
	 
	  ResultSet x=obj.store(loginBean.getMail(), loginBean.getPwd());
	
	  if(x.next())
	  {
		  model.addAttribute("name", x.getString("vchr_firstname"));
		 // model.addAttribute("pwd", loginBean.getPwd());
		 //  System.out.println("x="+x);*/
		
		 
		  return "hello";
		  
		}
	  else
	  {
		  System.out.println("haiii");
		  model.addAttribute("error", "Login  Failed");
		  
      	return "hello2";
	  }
	
		
	 
}
	
	



	}

