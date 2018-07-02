package com.atcgt.service.impl;

import java.util.List;

import com.atcgt.dao.QuestionBankDao;
import com.atcgt.dao.impl.QuestionBankDaoImpl;
import com.atcgt.entity.QuestionBank;
import com.atcgt.service.QuestionBankService;

public class QuestionBankServiceImpl implements QuestionBankService {
   
	
    private QuestionBankDao questionBankDao=new QuestionBankDaoImpl();
	@Override
	public List<QuestionBank> getlist1() {
		return questionBankDao.getlist1();
	}

	@Override
	public List<QuestionBank> getlist2() {
		return questionBankDao.getlist2();
	}

	@Override
	public QuestionBank getOne(Integer id) {
		return questionBankDao.getOne(id);
	}

	@Override
	public int delete(QuestionBank entity) {
		return questionBankDao.delete(entity.getId());
	}

	@Override
	public int insert(QuestionBank entity) {
		return questionBankDao.insert(entity);
	}

}
