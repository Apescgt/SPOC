package com.atcgt.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.atcgt.entity.QuestionBank;
import com.atcgt.service.QuestionBankService;
import com.atcgt.service.impl.QuestionBankServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class QuestionBankAction extends ActionSupport implements ModelDriven<QuestionBank>{

	private static final long serialVersionUID = -4504061147965324323L;
	
	private  QuestionBank questionBank =new QuestionBank();
	
	private QuestionBankService  questionBankService =new QuestionBankServiceImpl();
	
	private List<QuestionBank> newList=new ArrayList<>();
	private int score=0;
	
	public String choose() throws Exception {
	    List<QuestionBank> chooseList = questionBankService.getlist1();
	    for (int i = 0; i <10; i++) {
	    	newList.add(chooseList.get((int) (Math.random()*chooseList.size())));
		}
	   ServletActionContext.getContext().getSession().put("newList", newList);
	    return "choose";
	}
	 
	
	public String blank() throws Exception {
		
		return "blank";
	}
	
    public String score() throws Exception {
      String[] ids = ServletActionContext.getRequest().getParameterValues("ids");
      for (String id : ids) {
    	  QuestionBank current = questionBankService.getOne(Integer.valueOf(id));
    	  String choose = ServletActionContext.getRequest().getParameter("choose"+Integer.valueOf(id));
          if(choose !=null) {
        	  if(choose.equals(current.getCorrectAnswer())) {
            	  score+=10;
              }
          }
      }
      ActionContext.getContext().put("score", score);
		return "score";
	 }
    

	public String list() throws Exception {
		List<QuestionBank> getlist1 = questionBankService.getlist1();
		ActionContext.getContext().put("getlist1", getlist1);
		return "list";
	}
	
	public String delete() throws Exception {
		System.out.println("=============delete");//bug≤‚ ‘
		int result = questionBankService.delete(questionBank);
	 System.out.println("result==="+result);
		return "save";
	}
	
	public String add() throws Exception {
		int result = questionBankService.insert(questionBank);
		return "save";
	}


	@Override
	public QuestionBank getModel() {
		return questionBank;
	}
  
	

}
