package com.atcgt.action;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.atcgt.entity.User;
import com.atcgt.service.UserService;
import com.atcgt.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>{
  
	private static final long serialVersionUID = -5778074255019998982L;
	private User user=new User();
	private UserService userService=new UserServiceImpl();
    private String message="";
   public String login() throws Exception {
	   
	   String teah = ServletActionContext.getRequest().getParameter("leixing");
	   if(StringUtils.isNotBlank(teah)) {
	   User user1 = userService.login(user.getUsername());
	   if(user1==null) {
		  message="�û�������Ϊ�գ�";
		  ServletActionContext.getRequest().setAttribute("error", message);
		  return "error";
	  }else if(!StringUtils.equals(user.getPasswd(),user1.getPasswd())) {
		  message="����������������룡";
		  ServletActionContext.getRequest().setAttribute("error", message);
		  return "error";
	  }else if(!Integer.valueOf(teah).equals(user1.getType())){
		  message="��ݴ���";
		  ServletActionContext.getRequest().setAttribute("error", message);
		  return "error";
	    }else if(Integer.valueOf(teah)==1) {
	    	  ActionContext.getContext().getSession().put("USER", user1);		 
			  return SUCCESS;
	    }else if(Integer.valueOf(teah)==2) {
	    	  ActionContext.getContext().getSession().put("USER", user1);		 
			  return "teah";
	    }else {
	    	message="��ѡ���¼��ݣ�";
	    	ServletActionContext.getRequest().setAttribute("error", message);
	    	return "error";
	    }
	  }else{
		    message="��ѡ���¼��ݣ�";
		    ServletActionContext.getRequest().setAttribute("error", message);
	    	return "error";
	  }
   }
	public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
	@Override
	public User getModel() {
		return user;
	}

}
