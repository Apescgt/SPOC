package com.atcgt.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.atcgt.dao.QuestionBankDao;
import com.atcgt.entity.QuestionBank;
import com.atcgt.utils.DBUtils;

public class QuestionBankDaoImpl implements QuestionBankDao {
     private SqlSession sqlSession=null;
	@Override
	public List<QuestionBank> getlist1() {
		 sqlSession = DBUtils.getSqlSession();
		 List<QuestionBank> chooseList = sqlSession.selectList("getList1ByType");
		 return chooseList;
	}

	@Override
	public List<QuestionBank> getlist2() {
		 sqlSession = DBUtils.getSqlSession();
		 List<QuestionBank> blankList = sqlSession.selectList("getList2ByType");
		 return blankList;
	}

	@Override
	public QuestionBank getOne(Integer id) {
		 sqlSession = DBUtils.getSqlSession();
		 QuestionBank questionBank = sqlSession.selectOne("getOneQuestionBank",id);
		 return questionBank;
	}

	@Override
	public int delete(Integer id) {
		 sqlSession = DBUtils.getSqlSession();
		 int result = sqlSession.delete("deleteQuest", id);
		 sqlSession.commit();
		 sqlSession.close();
		 return result;
	}

	@Override
	public int insert(QuestionBank entity) {
		 sqlSession = DBUtils.getSqlSession();
		 int result = sqlSession.insert("insertQuest", entity);
		 sqlSession.commit();
		 sqlSession.close();
		 return result;
	}
}
