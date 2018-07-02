package com.atcgt.action;

import com.atcgt.entity.User;
import com.atcgt.service.UserService;
import com.atcgt.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RegistAction extends ActionSupport implements ModelDriven<User>{
	private static final long serialVersionUID = -2853051725697626070L;
	private User user=new User();
	private UserService userService=new UserServiceImpl();
	
	public String register() throws Exception {
		userService.insert(user);
		return "save";
	}

	@Override
	public User getModel() {
		return user;
	}


}
