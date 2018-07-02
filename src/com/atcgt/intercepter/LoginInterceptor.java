package com.atcgt.intercepter;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor{

	private static final long serialVersionUID = -1206885876120724006L;

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		  //1.��ȡsession
		  Map<String, Object> session = ActionContext.getContext().getSession();
		  Object object = session.get("USER");
		 if(object==null) {
			 //������  �ض��򵽵�½ҳ��
			 return "toLogin";
		 }else {
			 //����   �Ѿ���½   ����
			 return invocation.invoke();
		 }
 	}

}
