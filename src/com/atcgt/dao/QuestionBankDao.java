package com.atcgt.dao;

import java.util.List;

import com.atcgt.entity.QuestionBank;

public interface QuestionBankDao {
     
	public QuestionBank  getOne(Integer id);
	public List<QuestionBank>  getlist1();
	
	public List<QuestionBank>  getlist2();
	
	public int delete(Integer id); 
	
	public int insert(QuestionBank entity); 
}
