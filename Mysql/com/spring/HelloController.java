package com.spring;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.Beans.UserBean;
import com.Beans.loginBean;
import com.DBconnection.*;



@RestController
public class HelloController
{
	
	//DEfault Router
	
	@RequestMapping(value="/", method= RequestMethod.GET)
	public String insert(Model model)
	{
				return "facebook";
	}


	
	
// Registration
	@RequestMapping(value="/Registration", method= RequestMethod.POST)
	public String facebook(@Validated @ModelAttribute("userBean") UserBean userBean	,BindingResult result,ModelMap model)throws SQLException{
		
	
	{
	       
		String fname =userBean.getFirstnane();
	        DB_insert1 obj =new DB_insert1();
	        boolean y=obj.insert(userBean.getFirstnane(), userBean.getLastname(),userBean.getPhno(), userBean.getMail(), userBean.getPass());
	        if(y==true)
	        {
	        	model.addAttribute("fname", userBean.getFirstnane());
	        	model.addAttribute("lname", userBean.getLastname());
	        	model.addAttribute("phone", userBean.getPhno());
	        	model.addAttribute("email", userBean.getMail());
	        	model.addAttribute("pass", userBean.getPass());
	        	return "home";
	        }
	        else
	        {
	        	model.addAttribute("error", "Registration Failed");
	        	return "hello2";
	        }
		}
	}	
}
					
	
	



	        
	
	

