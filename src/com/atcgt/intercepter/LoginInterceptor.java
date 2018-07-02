package com.atcgt.intercepter;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor{

	private static final long serialVersionUID = -1206885876120724006L;

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		  //1.获取session
		  Map<String, Object> session = ActionContext.getContext().getSession();
		  Object object = session.get("USER");
		 if(object==null) {
			 //不存在  重定向到登陆页面
			 return "toLogin";
		 }else {
			 //存在   已经登陆   放行
			 return invocation.invoke();
		 }
 	}

}
