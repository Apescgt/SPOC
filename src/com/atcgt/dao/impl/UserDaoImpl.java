package com.atcgt.dao.impl;

import org.apache.ibatis.session.SqlSession;

import com.atcgt.dao.UserDao;
import com.atcgt.entity.User;
import com.atcgt.utils.DBUtils;

public class UserDaoImpl implements UserDao {
  private SqlSession  sqlSession=null;
	@Override
	public User getUser(String username) {
		sqlSession=DBUtils.getSqlSession();
		User user = sqlSession.selectOne("getOneByName",username);
		sqlSession.close();
		return user;
	}
	@Override
	public int insert(User entity) {
		sqlSession=DBUtils.getSqlSession();
		int result = sqlSession.insert("insertUser1", entity);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

}
