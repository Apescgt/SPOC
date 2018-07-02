package com.atcgt.service;

import java.util.List;

import com.atcgt.entity.QuestionBank;

public interface QuestionBankService {
   
	
	public QuestionBank getOne(Integer id);
	public List<QuestionBank>  getlist1();
	
	public List<QuestionBank>  getlist2();
	
	public int delete(QuestionBank entity); 
	
	public int insert(QuestionBank entity);
}
